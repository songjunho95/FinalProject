package com.example.demo.entity

public ProductDto.Read toRead(String path) {
    Double star = countOfStar == 0 ? -1.0 : sumOfStar/countOfStar;
    return ProductDto.Read.builder().pno(pno).name(name).info(info).imagename(path + imagename).price(price)
            .salesVolume(salesVolume).countOfReview(countOfReview).categoryCode(categoryCode).star(star).build();
}