# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ->
  order.setupForm()

order =
  setupForm: ->
    $('new_payment').submit ->
      $('input[type=submit]').attr('disabled', true)
      if $('#card_number').length
        order.processCard()
        false
      else
        true
  
  processCard: ->
    card =
      number: $('#card_number').val()
      cvc: $('#card_code').val()
      exp_month: $('#card_month').val()
      exp_year: $('#card_year').val()
    paymill.createToken(card, order.handlePaymillResponse)
  
  handlePaymillResponse: (error, result) ->
    if error
      $('#paymill_error').text(error.apierror)
      $('input[type=submit]').attr('disabled', false)
    else
      $('#order_paymill_card_token').val(result.token)
      $('#new_order')[0].submit()