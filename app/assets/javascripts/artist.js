function allSongsDelete(event) {
  event.preventDefault();
  $.each($(".song"), function(index, tableRow) {
    songId = $(tableRow).data('id');
    deleteSong(songId);
  });
}
function cleanUpDoneSongs(event) {
  event.preventDefault();

  $.each($(".success"), function(index, tableRow) {
    SongId = $(tableRow).data('id');
    deleteSong(SongId);
  });
}

function deleteSong(SongId) {
  $.ajax({
    type: "DELETE",
    url: "/Songs/" + SongId + ".json",
    contentType: "application/json",
    dataType: "json"
  })
  .done(function(data) {
    $('tr[data-id="'+SongId+'"]').remove();
    updateCounters();
  });
}
