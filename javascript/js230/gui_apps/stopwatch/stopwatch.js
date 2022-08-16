'use strict';

const Timer = {
  csec: 0,
  drawClock() {
    let csecNow = this.csec;
    let seconds = Math.floor(csecNow / 100);
    let minutes = Math.floor(seconds / 60);
    let hours   = Math.floor(minutes / 60);

    csecNow %= 100;
    seconds %= 60;
    minutes %= 60;

    document.getElementById('c-seconds').innerText = String(csecNow).padStart(2, '0');
    document.getElementById('seconds').innerText = String(seconds).padStart(2, '0');
    document.getElementById('minutes').innerText = String(minutes).padStart(2, '0');
    document.getElementById('hours').innerText = String(hours).padStart(2, '0');
  },
  handleStartStop(event) {
    if (this.timerButton.innerText === 'Start') {
      event.target.innerText = 'Stop';

      this.timer = setInterval(() => {
        this.csec += 1;
        this.drawClock();
      }, 10);
    } else {
      event.target.innerText = 'Start';
      clearInterval(this.timer);
    }
  },
  handleReset() {
    if (this.timerButton.innerText === 'Stop') {
      this.timerButton.innerText = 'Start';
      clearInterval(this.timer);
    }

    this.csec = 0;
    this.drawClock();
  },
  init() {
    this.drawClock();
    this.timerButton = document.getElementById('start-stop');
    let resetButton = document.getElementById('reset-clock');

    this.timerButton.addEventListener('click', this.handleStartStop.bind(this));
    resetButton.addEventListener('click', this.handleReset.bind(this));
  },
};

document.addEventListener('DOMContentLoaded', () => {
  Timer.init();
});
