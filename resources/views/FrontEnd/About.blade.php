@extends('Layout')
@section('title')    
{{ trans('home.about') }}
@endsection
@section('content-layout')
<!-- Breadcrumb Start -->
<div class="breadcrumb-area mt-30">
    <div class="container">
        <div class="breadcrumb">
            <ul class="d-flex align-items-center">
                <li><a href="index.html">Home</a></li>
                <li class="active"><a href="about.html">About Us</a></li>
            </ul>
        </div>
    </div>
    <!-- Container End -->
</div>
<!-- Breadcrumb End -->
<!-- About Us Start Here -->
<div class="about-us pt-100 pt-sm-60">
    <div class="container">
        <div class="row">
            <div class="col-lg-6">
                <div class="sidebar-img mb-all-30">
                    <img src="{{asset('source/assets/frontend/img/blog/10.jpg')}}" alt="single-blog-img">
                </div>
            </div>
            <div class="col-lg-6">
                <div class="about-desc">
                    <h3 class="mb-10 about-title">About our success story</h3>
                    <p class="mb-20">Xin chào anh chị, em tên là Khuong. Em đến từ Sài Gòn, năm nay em 22 tuổi. Em học chuyên ngành công nghệ thông tin trường đại học Hà Nội. Sở thích của em là bơi lội và đó cũng là sở trường. Em không biết nấu ăn và cũng không thích vào bếp. Ở đây có anh chị nào cùng sở thích với em không ạ? Em rất vui khi được làm quen với mọi người.</p>
                    <p class="mb-20">Xin chào anh chị, em tên là Phúc. Em đến từ Sài Gòn, năm nay em 22 tuổi. Em học chuyên ngành công nghệ thông tin trường đại học Hà Nội. Sở thích của em là bơi lội và đó cũng là sở trường. Em không biết nấu ăn và cũng không thích vào bếp. Ở đây có anh chị nào cùng sở thích với em không ạ? Em rất vui khi được làm quen với mọi người.</p>
                    <p class="mb-20">Xin chào anh chị, em tên là Tú. Em đến từ Sài Gòn, năm nay em 22 tuổi. Em học chuyên ngành công nghệ thông tin trường đại học Hà Nội. Sở thích của em là bơi lội và đó cũng là sở trường. Em không biết nấu ăn và cũng không thích vào bếp. Ở đây có anh chị nào cùng sở thích với em không ạ? Em rất vui khi được làm quen với mọi người.</p>
                    <p class="mb-20">Xin chào anh chị, em tên là An. Em đến từ Sài Gòn, năm nay em 22 tuổi. Em học chuyên ngành công nghệ thông tin trường đại học Hà Nội. Sở thích của em là bơi lội và đó cũng là sở trường. Em không biết nấu ăn và cũng không thích vào bếp. Ở đây có anh chị nào cùng sở thích với em không ạ? Em rất vui khi được làm quen với mọi người.</p>
                    <a href="#" class="return-customer-btn read-more">read more</a>
                    <a href="#" class="return-customer-btn read-more">read more</a>
                </div>
            </div>
        </div>
    </div>
    <!-- Container End -->
</div>
<!-- About Us End Here -->
<!-- About Us Team Start Here -->
<div class="about-team pt-100 pt-sm-60">
    <div class="container">
       <h3 class="mb-30 about-title">our exclusive team</h3>
        <div class="row text-center">
            <!-- Single Team Start Here -->
            <div class="col-lg-3 col-md-6 col-sm-6 col-6">
                <div class="single-team mb-all-30">
                    <div class="team-img sidebar-img">
                        <img src="{{asset('source/assets/frontend/img/team/2.jpg')}}" alt="team-image">
                        <div class="team-link">
                            <ul>
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="team-info">
                        <h4>Marcos Alonso</h4>
                        <p>web designer</p>
                    </div>
                </div>
            </div>
            <!-- Single Team End Here -->
             <!-- Single Team Start Here -->
            <div class="col-lg-3 col-md-6 col-sm-6 col-6">
                <div class="single-team mb-all-30">
                    <div class="team-img sidebar-img">
                        <img src="{{asset('source/assets/frontend/img/team/1.jpg')}}" alt="team-image">
                        <div class="team-link">
                            <ul>
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="team-info">
                        <h4>Luis Aragones</h4>
                        <p>web developer</p>
                    </div>
                </div>
            </div>
            <!-- Single Team End Here -->
             <!-- Single Team Start Here -->
            <div class="col-lg-3 col-md-6 col-sm-6 col-6">
                <div class="single-team mb-xxs-30">
                    <div class="team-img sidebar-img">
                        <img src="{{asset('source/assets/frontend/img/team/3.jpg')}}" alt="team-image">
                        <div class="team-link">
                            <ul>
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="team-info">
                        <h4>Maria Alessis</h4>
                        <p>class master</p>
                    </div>
                </div>
            </div>
            <!-- Single Team End Here -->
             <!-- Single Team Start Here -->
            <div class="col-lg-3 col-md-6 col-sm-6 col-6">
                <div class="single-team">
                    <div class="team-img sidebar-img">
                        <img src="{{asset('source/assets/frontend/img/team/4.jpg')}}" alt="team-image">
                        <div class="team-link">
                            <ul>
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="team-info">
                        <h4>John Doe</h4>
                        <p>php developer</p>
                    </div>
                </div>
            </div>
            <!-- Single Team End Here -->
        </div>
    </div>
    <!-- Container End -->
</div>
<!-- About Us Team End Here -->
<!-- About Us Skills Start Here -->
<div class="about-skill ptb-100 ptb-sm-60">
    <div class="container">
        <div class="row">
            <div class="col-lg-6">
               <h3 class="about-title mb-20">Our skills</h3>
                <div class="skill-progress mb-all-40">
                    <div class="progress">
                        <div class="skill-title">Strategy 79%</div>
                        <div class="progress-bar wow fadeInLeft" data-wow-delay="0.2s" role="progressbar" style="width: 79%; visibility: visible; animation-delay: 0.2s; animation-name: fadeInLeft;">
                        </div>
                    </div>
                    <div class="progress">
                        <div class="skill-title">Marketing 96%</div>
                        <div class="progress-bar wow fadeInLeft" data-wow-delay="0.3s" role="progressbar" style="width: 96%; visibility: visible; animation-delay: 0.3s; animation-name: fadeInLeft;">
                        </div>
                    </div>
                    <div class="progress">
                        <div class="skill-title">Wordpress Theme 65%</div>
                        <div class="progress-bar wow fadeInLeft" data-wow-delay="0.4s" role="progressbar" style="width: 65%; visibility: visible; animation-delay: 0.4s; animation-name: fadeInLeft;">
                        </div>
                    </div>
                    <div class="progress">
                        <div class="skill-title">Shopify Theme 75%</div>
                        <div class="progress-bar wow fadeInLeft" data-wow-delay="0.5s" role="progressbar" style="width: 75%; visibility: visible; animation-delay: 0.5s; animation-name: fadeInLeft;">
                        </div>
                    </div>
                    <div class="progress">
                        <div class="skill-title">UI/UX Design 92%</div>
                        <div class="progress-bar wow fadeInLeft" data-wow-delay="0.6s" role="progressbar" style="width: 89%; visibility: visible; animation-delay: 0.6s; animation-name: fadeInLeft;">
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="ht-single-about">
                    <h3 class="about-title mb-20">our works</h3>
                    <div class="ht-about-work">
                        <span>1</span>
                        <div class="ht-work-text">
                            <h5><a href="#">LOREM IPSUM DOLOR SIT AMET</a></h5>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent eu nisi ac mi</p>
                        </div>
                    </div>
                    <div class="ht-about-work">
                        <span>2</span>
                        <div class="ht-work-text">
                            <h5><a href="#">DONEC FERMENTUM EROS</a></h5>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent eu nisi ac mi</p>
                        </div>
                    </div>
                    <div class="ht-about-work">
                        <span>3</span>
                        <div class="ht-work-text">
                            <h5><a href="#">LOREM IPSUM DOLOR SIT AMET</a></h5>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent eu nisi ac mi</p>
                        </div>
                    </div>
                    <div class="ht-about-work">
                        <span>4</span>
                        <div class="ht-work-text">
                            <h5><a href="#">Adipiscing IPSUM DOLOR SIT AMET</a></h5>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent eu nisi ac mi</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Container End -->
</div>
<!-- About Us Skills End Here -->
@endsection