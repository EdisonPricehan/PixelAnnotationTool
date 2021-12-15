PixelAnnotationTool
============================

-----------------
| **` Linux/MAC `** | **` Windows `** | **` Donate  `** | 
|-----------------|---------------------|---------------------|
| [![Build Status](https://api.travis-ci.org/abreheret/PixelAnnotationTool.svg?branch=master)](https://travis-ci.org/abreheret/PixelAnnotationTool) | [![Appveyor Build Status](https://img.shields.io/appveyor/ci/abreheret/pixelannotationtool.svg)](https://ci.appveyor.com/project/abreheret/pixelannotationtool) |  [![Donate](https://img.shields.io/badge/Donate-PayPal-green.svg)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=8K79VKWBS7352) |



Software that allows you to manually and quickly annotate images in directories.
The method is pseudo manual because it uses the algorithm [watershed marked](http://docs.opencv.org/3.1.0/d7/d1b/group__imgproc__misc.html#ga3267243e4d3f95165d55a618c65ac6e1) of OpenCV. The general idea is to manually provide the marker with brushes and then to launch the algorithm. If at first pass the segmentation needs to be corrected, the user can refine the markers by drawing new ones on the erroneous areas (as shown on video below).

[![gif_file](giphy.gif)](https://youtu.be/wxi2dInWDnI)

Example :

<img src="https://raw.githubusercontent.com/abreheret/PixelAnnotationTool/master/images_test/Abbey_Road.jpg" width="300"/> <img src="https://raw.githubusercontent.com/abreheret/PixelAnnotationTool/master/images_test/Abbey_Road_color_mask.png" width="300"/>

Little example from an user ([tenjumh](https://github.com/tenjumh/Pixel-Annotation-Tool)) of PixelAnnotationTools : https://www.youtube.com/watch?v=tX-xcg5wY4U

----------

### Building Dependencies :
* [Qt](https://www.qt.io/download-open-source/)  >= 5.x
* [CMake](https://cmake.org/download/) >= 2.8.x 
* [OpenCV](http://opencv.org/releases.html) >= 2.4.x 
* For Windows Compiler : Works under Visual Studio >= 2015

How to build go to [here](scripts_to_build)

### Labeling Criteria
#### Label Meaning and Reason
* ![boat](https://via.placeholder.com/15/0033FF/000000?text=+) **boat** &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; maybe we can locate boat
* ![bridge](https://via.placeholder.com/15/922b21/000000?text=+) **bridge**  &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; obstacle that both drone and boat need to avoid
* ![dry sediment](https://via.placeholder.com/15/f4d03f/000000?text=+) **dry sediment** &emsp;&emsp;&emsp;&emsp; safe area where drone can land
* ![forest vegetation](https://via.placeholder.com/15/2ecc71/000000?text=+) **forest vegetation** &emsp;&emsp;&nbsp; tall trees that drone cannot land upon
* ![river](https://via.placeholder.com/15/9b59b6/000000?text=+) **river** &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; safe area where boat can drive
* ![self](https://via.placeholder.com/15/000000/000000?text=+) **self** &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;&nbsp; drone body itself
* ![senescent vegetation](https://via.placeholder.com/15/e67e22/000000?text=+) **senescent vegetation** &nbsp; grassland where drone can land, can be combined with dry sediment
* ![sky](https://via.placeholder.com/15/85c1e9/000000?text=+) **sky** &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;&nbsp; can be combined with forest vegetation
* ![wood in river](https://via.placeholder.com/15/784212/000000?text=+) **wood in river** &emsp;&emsp;&emsp;&emsp; obstacle that boat needs to avoid

#### Label Rules
* Every visible category needs to be labeled, like small wood in river that sticks out of river.
* Edges between adjacent categories need not to be very precise, like edges between sky and forest vegetation, and edges between senescent vegetation and dry sediment.
* We mainly care about where boat cannot go, so try to label wood in river thoroughly as you can.
* After annotation an image, remember to click File  ->  save current image, then 3 images will be saved in your current image folder. I will think of a way for collecting and uploading those annotation images, maybe by adding option to this QT panel to select annotation directory.
* cont...

#### Label Example
Click **File  -> Open directory**  to open the image folder you want to annotate, then the images list will show up on the right side of the panel, you can click any image in that list and your current annotation progress will remain when you click back the previous image tabs. 

Main Panel
<img src="https://raw.githubusercontent.com/EdisonPricehan/PixelAnnotationTool/master/images_test/mail%20panel.png">

Image with river, dry sediment, forest vegetation, sky and wood in river

<img src="https://raw.githubusercontent.com/EdisonPricehan/PixelAnnotationTool/master/images_test/wildcat-example-1.jpg"/> 
<img src="https://raw.githubusercontent.com/EdisonPricehan/PixelAnnotationTool/master/images_test/wildcat-example-1-labeled.png"/>

Image with river, dry sediment and boat

<img src="https://raw.githubusercontent.com/EdisonPricehan/PixelAnnotationTool/master/images_test/wildcat-example-2.jpg"/>
<img src="https://raw.githubusercontent.com/EdisonPricehan/PixelAnnotationTool/master/images_test/wildcat-example-2-labeled.png"/>

Image with river, dry sediment, forest vegetation, senescent vegetation, sky and wood in river

<img src="https://raw.githubusercontent.com/EdisonPricehan/PixelAnnotationTool/master/images_test/wildcat-example-3.jpg"/> 
<img src="https://raw.githubusercontent.com/EdisonPricehan/PixelAnnotationTool/master/images_test/wildcat-example-3-labeled.png"/>

Image with river, self, dry sediment, forest vegetation, senescent vegetation, sky and wood in river

<img src="https://raw.githubusercontent.com/EdisonPricehan/PixelAnnotationTool/master/images_test/wildcat-example-4.jpg"/>
<img src="https://raw.githubusercontent.com/EdisonPricehan/PixelAnnotationTool/master/images_test/wildcat-example-4-labeled.png"/>

### Download binaries :
Go to release [page](https://github.com/abreheret/PixelAnnotationTool/releases)

### Donate :
If you like, donate !


Donating is very simple - and secure. Please click [here](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=8K79VKWBS7352) to make a donation. 

**Thank you!**

Your donation will help me to maintain and update PixelAnnotationTool.

### License :

GNU Lesser General Public License v3.0 

Permissions of this copyleft license are conditioned on making available complete source code of licensed works and modifications under the same license or the GNU GPLv3. Copyright and license notices must be preserved. Contributors provide an express grant of patent rights. However, a larger work using the licensed work through interfaces provided by the licensed work may be distributed under different terms and without source code for the larger work.

[more](https://github.com/abreheret/PixelAnnotationTool/blob/master/LICENSE)

### Citation :

```bib
  @MISC{Breheret:2017,
    author = {Amaury Br{\'e}h{\'e}ret},
    title = {{Pixel Annotation Tool}},
    howpublished = "\url{https://github.com/abreheret/PixelAnnotationTool}",
    year = {2017},
  }
```


