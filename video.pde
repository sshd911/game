class Video extends Consts{
 public Rectangle[] faces;

 public Video() {
  opencv.loadCascade(OpenCV.CASCADE_FRONTALFACE);
  capture.start();
 }
 
 public void render(OpenCV opencv, Capture capture) {
  opencv.loadImage(capture);
  image(capture, 0, 0 );
  faces = opencv.detect();
  fill(0);
 }
}
