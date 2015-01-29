import cv2


class TestWebcam:
    def test_webcam(self):
        cam = cv2.VideoCapture(0)
        cam.open(0)
        results = [cam.read()[0] for i in range(100)]
        assert True in results
