private class Video {
 private Rectangle[] faces;

 private Video() { // called by index.draw
  opencv.loadCascade(OpenCV.CASCADE_FRONTALFACE);
  capture.start();
 }
 
 private void render(OpenCV opencv, Capture capture) { // called by index.draw
  opencv.loadImage(capture);
  image(capture, 0, 0 );
  faces = opencv.detect();
  fill(0);
 }
}
