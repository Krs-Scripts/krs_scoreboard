
const Open = (data) => {
  $(".scoreboard-block").fadeIn(150); 
  $("#total-players").html(`<p>${data.players} of ${data.maxPlayers}</p>`);
  $("#police-count").html(data.policeCount > 0 ? `<span class="job">${data.policeCount}</span>` : '<span class="job">Off</span>');
  $("#mechanic-count").html(data.mechanicCount > 0 ? `<span class="job">${data.mechanicCount}</span>` : '<span class="job">Off</span>');
  $("#ambulance-count").html(data.ambulanceCount > 0 ? `<span class="job">${data.ambulanceCount}</span>` : '<span class="job">Off</span>');
  $("#cardealer-count").html(data.cardealerCount > 0 ? `<span class="job">${data.cardealerCount}</span>` : '<span class="job">Off</span>');
};

const Close = () => {
  $(".scoreboard-block").fadeOut(150);
};

window.addEventListener('message', (event) => {
  if (event.data.action === 'open') {
    Open(event.data); 
  } else if (event.data.action === 'close') {
    Close(); 
  }
});