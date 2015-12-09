var Composition = function () {

  var sma = {template: 'SMA value with <input type="number" name="period"> periods'};
  var ema = {template: 'EMA value with <input type="number" name="period"> periods'};
  var swma = {template: 'SWMA value with <input type="number" name="period"> periods'};
  var lwma = {template: 'LWMA value with <input type="number" name="period"> periods'};
  var bid = {template: "bid value"};
  var ask = {template: "ask value"};
  var gt = {template: "is greater than"};
  var lt = {template: "is lower than"};
  var pct_gt = {template: 'is <input type="number" name="percent" value="5"> % greater than'};
  var pct_lt = {template: 'is <input type="number" name="percent" value="5"> % lower than'};
  var forAnyTick = {template: 'for any tick'};


  var forPeriod = {
    template: '<input type="number" name="percent" value="90"> % of the time during the last \
                   <input type="number" value="5"> \
                   <select name="periodicity"> \
                           <option value="second">second(s)</option>\
                           <option value="minute">minute(s)</option>\
                           <option value="hour">hour(s)</option>\
                   </select>'
  };
  var indicators = {
    sma: {generator: sma, display: "Simple Moving Average"},
    ema: {generator: ema, display: "Exponential Moving Average"},
    swma: {generator: swma, display: "Smoothed Moving Average"},
    lwma: {generator: lwma, display: "'Linear Weighted Moving Average"}
  };

  var lastClose = {template: "last close"};
  var lastOpen = {template: "last open"};
  var lastHigh = {template: "last high"};
  var lastLow = {template: "last low"};


  var profit_amount = {template: "Profit amount"};
  var loss_amount = {template: "Loss amount"};
  var profit_pct = {template: "Profit in percent"};
  var loss_pct = {template: "Loss in percent"};
  var numberInput = {
    template: '<input type="number" name="number">'
  };


  var lastPrices = {
    close: {generator: lastClose, display: "last close"},
    open: {generator: lastOpen, display: "last open"},
    high: {generator: lastHigh, display: "last high"},
    low: {generator: lastLow, display: "last low"}
  };

  var profit = {
    profit_amount: {generator: profit_amount, display: "In Amount"},
    profit_pct: {generator: profit_pct, display: "in Percent"}
  };

  var loss = {
    loss_amount: {generator: loss_amount, display: "In Amount"},
    loss_pct: {generator: loss_pct, display: "in Percent"}
  };

  var options = {
    open: {
      left: {
        bid: {generator: bid, qualifiers: ['bid']},
        ask: {generator: ask, qualifiers: ['ask']},
        lastPrice: {generator: lastPrices, display: "Last prices"},
        indicator: {generator: indicators}
      },
      operator: {
        gt: {generator: gt, display: "greater than"},
        lt: {generator: lt, display: "lower than"},
        pct_gt: {generator: pct_gt, display: "% lower than"},
        pct_lt: {generator: pct_lt, display: "% lower than"}
      },
      right: {
        lastPrice: {generator: lastPrices, display: "Last prices"},
        bid: {generator: bid, exclusions: ["bid"]},
        ask: {generator: ask, exclusions: ["ask"]},
        indicator: {generator: indicators},
        value: {generator: numberInput, display: "fixed Value"}

      },
      condition: {
        forAnyTick: {generator: forAnyTick},
        forPeriod: {generator: forPeriod}
      }
    },
    close: {
      left: {
        profit: {generator: profit, qualifiers: ['pnl'], display: 'Profit'},
        loss: {generator: loss, qualifiers: ['pnl'], display: 'Loss'},
        bid: {generator: bid, qualifiers: ['bid']},
        ask: {generator: ask, qualifiers: ['ask']},
        lastPrice: {generator: lastPrices, display: "Last prices"},
        indicator: {generator: indicators}
      },
      operator: {
        gt: {generator: gt, display: "greater than"},
        lt: {generator: lt, display: "lower than"},
        pct_gt: {generator: pct_gt, display: "% lower than", exclusions: ['pnl']},
        pct_lt: {generator: pct_lt, display: "% lower than", exclusions: ['pnl']}
      },
      right: {
        lastPrice: {generator: lastPrices, display: "Last prices", exclusions: ['pnl']},
        bid: {generator: bid, exclusions: ["bid", 'pnl']},
        ask: {generator: ask, exclusions: ["ask", 'pnl']},
        indicator: {generator: indicators, exclusions: ['pnl']},
        value: {generator: numberInput, display: "fixed value"}
      },
      condition: {
        forAnyTick: {generator: forAnyTick, exclusions: ['pnl']},
        forPeriod: {generator: forPeriod, exclusions: ['pnl']}
      }
    }
  };


  function createSelector(subOptions, $location, qualifiers, onSelected) {
    var filteredOptions = Object.keys(subOptions)
      // Filter exclusion
      .filter(function (type) {
        if (!qualifiers || qualifiers.length == 0 || !subOptions[type].exclusions || subOptions[type].exclusions == 0) {
          return true;
        }

        return subOptions[type].exclusions.filter(function (qualifier) {
            return qualifiers.indexOf(qualifier) >= 0;
          }).length == 0
      })
      // Filter inclusion
      .filter(function (type) {
        if (!subOptions[type].inclusions) {
          return true;
        }

        return subOptions[type].inclusions.filter(function (qualifier) {
            return qualifiers.indexOf(qualifier) >= 0;
          }).length != 0;
      });

    if (filteredOptions.length > 0) {
      var $select = $("<select name='type'>").appendTo($location);
      $("<option>").val('').html('select ...').appendTo($select);


      filteredOptions.forEach(function (key) {
        var display = subOptions[key].display || key;
        $("<option>")
          .val(key)
          .html(display)
          .appendTo($select);
      });


      $select.on("click", function () {
        var $selectedOption = $(this);
        var $select = $(this);
        var key = $selectedOption.val();
        if (key != '') {
          $select.hide();
          var selectedOption = subOptions[key];
          if (selectedOption.qualifiers) {
            selectedOption.qualifiers.forEach(function (val) {
              qualifiers.push(val);
            });
          }

          var $template = $("<div>").addClass(key).appendTo($location);
          if (subOptions[key].generator.template) {
            $template.html(subOptions[key].generator.template);
            !onSelected || onSelected();
          } else {
            createSelector(subOptions[key].generator, $template, qualifiers, onSelected);
          }
        }
      });
    } else {
      !onSelected || onSelected();
    }
  }


  var addCondition = function ($location, startWith) {
    var qualifiers = [];
    var conditionOption = options[$location.hasClass("open") ? "open" : "close"];
    var $expressions = $location.find(".expressions");
    var $expression = $("<div class='expression'/>").appendTo($expressions);
    $("<button>")
      .html("-")
      .appendTo($expression)
      .click(function () {
        $expression.remove();
        if (!$expressions.html()) {
          $location.remove();
        }
      });

    if (startWith) {
      $expression.append(startWith)
    }
    var $left = $("<div class='left'/>").appendTo($expression);
    createSelector(conditionOption.left, $left, qualifiers, function () {
      var $operator = $("<div class='operator'/>").appendTo($expression);
      createSelector(conditionOption.operator, $operator, qualifiers, function () {
        var $right = $("<div class='right'/>").appendTo($expression);
        createSelector(conditionOption.right, $right, qualifiers, function () {
          var $condition = $("<div class='condition'/>").appendTo($expression);
          createSelector(conditionOption.condition, $condition, qualifiers, function () {
            $("<button>")
              .html("and ...")
              .appendTo($expression)
              .click(
              function () {
                $(this).hide();
                addCondition($location, "<div class='and'>And</div>");
              }
            );
          });
        });
      });
    });
  };


  var addOrCondition = function (location, isOpen) {
    var $orderBlock = $("<div>").addClass("orderBlock").addClass(isOpen ? "open" : "close").appendTo($(location));
    var $conditions = $("<div class='expressions'>").appendTo($orderBlock);
    if (isOpen) {
      $('<div class="order">\
        Open a position at market type : <select><option value="buy">Buy</option><option value="buy">Sell</option></select>\
        amount : <input type="number" value="1000">\
      </div>').appendTo($orderBlock);
    } else {
      $('<div class="order">Close the position at market price</div>').appendTo($orderBlock);
    }

    addCondition($orderBlock);
  };

  var refreshStatus = function (selector) {
    var allGood = true;

    (selector && $(selector) || $("input, select")).each(function () {
      var $this = $(this);
      if (!$this.val()) {
        $this.removeClass("ok").addClass("error");
        allGood = false;
      } else {
        $this.removeClass("error").addClass("ok");
      }
    });
    return allGood;
  };

  var generateScript = function (template) {
    if (!refreshStatus()) {
      return false;
    }


    var scriptStructure = {
      allIndicators: [],
      openBlocks: [],
      closeBlocks: []
    };

    function getIndicatorExpression($location, allIndicators) {
      var selectedOption = $location.find("select").val();
      var $selectedOption = $location.find("." + selectedOption);
      var indicatorName;
      var indicatorConstructor;
      var indicatorExpression;
      switch (selectedOption) {
        case "sma":
        case "ema":
        case "swma":
        case "lwma":
          var periods = $selectedOption.find("input[name=period]").val();
          indicatorName = selectedOption + periods;
          indicatorConstructor = 'indicators["' + indicatorName + '"] = ' +
            'new MovingAverageIndicator(env.mainBarAdapter, MOVING_AVERAGE_METHOD.'
            + selectedOption.toUpperCase() + ', ' + periods + ', "close");';
          indicatorExpression = 'indicators["' + indicatorName + '"].getFromLast(0)';
      }


      if (allIndicators.indexOf(indicatorConstructor) == -1) {
        allIndicators.push(indicatorConstructor);
      }


      return indicatorExpression;
    }


    function getOperatorValue($location) {
      var selectedOption = $location.find("select").val();
      var $selectedOption = $location.find("." + selectedOption);
      switch (selectedOption) {
        case "gt":
          return ">";
        case "lt":
          return "<";
        case "pct_lt":
          return ">" + $selectedOption.find("input[name=percent]") + " /100*";
        case "pct_gt":
          return "<" + $selectedOption.find("input[name=percent]") + " /100*";
      }
    }

    function getExpression($location, allIndicators) {
      var selectedOption = $location.find("select").val();
      var $selectedOption = $location.find("." + selectedOption);
      switch (selectedOption) {
        case "lastPrice":
          return "env.mainBarAdapter.last()." + $selectedOption.find("select").val();
        case "bid":
          return "tick.bid";
        case "ask":
          return "tick.ask";
        case "indicator":
          return getIndicatorExpression($selectedOption, allIndicators);
        case "value":
          return $selectedOption.find("input[name=number]").val();
        case "profit":
          return $selectedOption.find("select").val() == "profit_pct" ? "order.profitInPercent(tick)" : "order.profitInAmount(tick)";
        case "loss":
          return $selectedOption.find("select").val() == "loss_pct" ? "order.lossInPercent(tick)" : "order.lossInAmount(tick)";
      }

    }

    $(".orderBlock").each(function () {
      var $orderBlock = $(this);
      var block = {expressions: []};
      var isOpen = $orderBlock.hasClass("open");

      // Conditions
      (isOpen ? scriptStructure.openBlocks : scriptStructure.closeBlocks).push(block);
      $orderBlock.find(".expression").each(function () {
          var $expression = $(this);
          var $left = $expression.find(".left");
          var $operator = $expression.find(".operator");
          var $right = $expression.find(".right");
          var $condition = $expression.find(".condition"); // TODO

          block.expressions.push(
            getExpression($left, scriptStructure.allIndicators) +
            getOperatorValue($operator) +
            getExpression($right, scriptStructure.allIndicators)
          );
        }
      );
      // Order
      if (isOpen) {
        var $order = $orderBlock.find(".order");
        block.order = {side: $order.find("select").val(), amount: $order.find("input").val()};
      }


    });
    $("#json")
      .html(JSON.stringify(scriptStructure, null, 2));

    $("#script")
      .html(template(scriptStructure));

    return scriptStructure;
  };


  return {addOrCondition: addOrCondition, generateScript: generateScript, refreshStatus: refreshStatus}
};