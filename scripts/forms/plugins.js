/**
 * Form plugins demo
 */
(function($) {
  'use strict';

  /******** Maxlength plugin ********/
  $('#maxlength').maxlength({
    threshold: 10
  });
  $('#maxlengthConf').maxlength({
    alwaysShow: true,
    threshold: 50,
    warningClass: 'label label-info',
    limitReachedClass: 'label label-warning',
    placement: 'bottom',
    preText: 'used ',
    separator: ' of ',
    postText: ' chars.'
  });

})(jQuery);
