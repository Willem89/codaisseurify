$( document ).ready(function() {
    console.log( "ready!" );
});

function submitSong(event) {
  // stop the form from doing the default action, submitting...
  event.preventDefault();

  var title = $("#new-song").val();

  createSong(title);

  $("#new-song").val(null);
  updateCounters();
}




function deleteSong(SongId) {
  event.preventDefault();
  $.when($(".delete").remove())
    .then();
}


function createSong(title) {
  var newSong = {title: title, album:album, video_url:video_url}


  .done(function(data) {
    $('tr[data-id="'+SongId+'"]').remove();
    updateCounters();
  });
}

function DeleteSongs(event) {
  event.preventDefault();

  $.each($(".song"), function(index, tableRow) {
    songId = $(tableRow).data('id');
    deleteSongs(songId);
  });
}
$(document).ready(function() {
  $("input[type=checkbox]").bind('change', toggleDone);
});
