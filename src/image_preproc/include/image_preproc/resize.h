#pragma once

#include <image_crop_coordinate_converter/types.h>
#include <opencv2/core/core.hpp>
#include "opencv2/imgproc/imgproc.hpp"

namespace image_preproc {

cv::Mat cropAndResize(const cv::Mat& img, const ImgSize& size);

void crop(const cv::Mat&, cv::Mat&, const cv::Rect&);
void scale(const cv::Mat&, cv::Mat&, const double, const double = 0, const uint8_t = cv::INTER_LINEAR);
void resize(const cv::Mat&, cv::Mat&, const size_t , const size_t = 0, const uint8_t = cv::INTER_LINEAR);
}

