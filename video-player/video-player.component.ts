import { Component, OnInit, Input } from '@angular/core';

@Component({
  selector: 'app-video-player',
  templateUrl: './video-player.component.html',
  styleUrls: ['./video-player.component.scss'],
})
export class VideoPlayerComponent implements OnInit {
  @Input() videoPath: String;
  @Input() poster: String;

  constructor() {}

  ngOnInit(): void {}

  playPause() {
    let myVideo: any = document.getElementById('my_video');
    if (myVideo.paused) myVideo.play();
    else myVideo.pause();
  }

  isPlaying() {
    let myVideo: any = document.getElementById('my_video');
    if (myVideo.paused) return false;
    else return true;
  }
}
