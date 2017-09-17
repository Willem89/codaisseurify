$(document).ready(function(){
  console.log('deady.....')

});

$.(document)createSong(songId)
var title = $("#new-song").val();

  createSong(title, ablum, video_url);

  $("#new-song").val(null);

$.ajax({
    type: "PUT",
    url: "/artist/" + artistId + "/song/" + songId + ".json",
    data: JSON.stringify({
      todo: { completed: isCompleted }
    }),
    contentType: "application/json",
    dataType: "json"
  })
  .done(function(data) {
    console.log(data);

    tableRow.toggleClass("success", data.completed);

    updateCounters();
  });
}




function deleteSong(songId) {

  $.ajax({
    type: "DELETE",
    url: "/artist/" + artistId + "/song/" + songId + ".json",
    contentType: "application/json",
    dataType: "json"
  })
  .done(function(data) {
    $('tr[data-id="'+songId+'"]').remove();
    updateCounters();
  });
}
