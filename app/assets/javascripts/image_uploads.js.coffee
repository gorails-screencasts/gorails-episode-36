jQuery ->
  $(document).on "upload:start", "form", (e) ->
    $(this).find("input[type=submit]").attr "disabled", true
    $("#image").text("Uploading...")

  $(document).on "upload:progress", "form", (e) ->
    detail          = e.originalEvent.detail
    percentComplete = Math.round(detail.loaded / detail.total * 100)
    $("#image").text("#{percentComplete}% uploaded")

  $(document).on "upload:success", "form", (e) ->
    $(this).find("input[type=submit]").removeAttr "disabled"  unless $(this).find("input.uploading").length

    image_info = $("input[name='film[image]']").val()
    image_id = JSON.parse(image_info).id
    $("#image").html $("<img />").attr(
      src: "/attachments/cache/fill/150/150/#{image_id}/image"
    )
