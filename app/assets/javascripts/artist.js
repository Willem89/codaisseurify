function submitSong(event) {
  // stop the form from doing the default action, submitting...
  event.preventDefault();

  var title = $("#new-song").val();

  createTodo(title);

  $("#new-song").val(null);
  updateCounters();
}


$(document).SongsDelete(event())


function deleteSong(SongId) {
  $.ajax({
    type: "DELETE",
    url: "/artist/" + "artistId" + "/songs/"+ "SongId" + ".json",
    data: JSON.stringify({
        song: newSong
    }),
    contentType: "application/json",
    dataType: "json"
  })
  .done(function(data) {
    $('tr[data-id="'+SongId+'"]').remove();
    updateCounters();
  });
}

function createSong(title) {
  var newSong = {title: title, album:album, video_url:video_url}

  $.ajax({
    type: "POST",
    url: "/artist/" + "artistId" + "/songs/"+ "SongId" + ".json",
    data: JSON.stringify({
        song: newSong
    }),
    contentType: "application/json",
    dataType: "json"
  })
  .done(function(data) {
    $('tr[data-id="'+SongId+'"]').remove();
    updateCounters();
  });
}
