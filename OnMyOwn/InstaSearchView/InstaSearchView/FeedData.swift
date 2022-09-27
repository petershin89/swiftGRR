//
//  FeedData.swift
//  InstaSearchView
//
//  Created by 신 동군 on 2022/09/27.
//


import Foundation

struct Feed {
    let pics: String
    let place: String
    let message: String
    let date: String
}

extension Feed {
    static let list: [Feed] = [
        Feed(pics: "dgun1", place: "서강대학교 하비에르관", message: "석사 졸업식", date: "2021-08-17"),
        Feed(pics: "dgun2", place: "밀레니엄 힐튼 호텔", message: "준이형과 힐튼 호텔에서", date: "2022-08-16"),
        Feed(pics: "dgun3", place: "용산구 한남동 87번지", message: "노부와 함께한 한남동 사유", date: "2022-04-28"),
        Feed(pics: "dgun4", place: "종로구 내수동 대우빌딩", message: "아주 가끔 운동해요", date: "2022-09-26"),
        Feed(pics: "dgun5", place: "잠실 시그니엘", message: "7차 서울 호텔 투어", date: "2022-03-08"),
        Feed(pics: "dgun6", place: "마포 현대아파트", message: "성현이와 함께 머물렀던 그곳", date: "2020-08-12"),
        Feed(pics: "dgun7", place: "여의도 페어몬트", message: "6차 서울 호텔 투어", date: "2021-10-17"),
        Feed(pics: "dgun8", place: "종로구 내수동", message: "우리 집", date: "2022-07-03"),
        Feed(pics: "dgun9", place: "제주도 동백 아일랜드", message: "성현이와 함께한 제주도", date: "2020-05-29"),
        Feed(pics: "dgun10", place: "서강대학교 하비에르관", message: "하비에르관 4층 화장실 포토 스팟 개장", date: "2022-03-31"),
        Feed(pics: "dgun11", place: "종로구 옥인동", message: "옥인동 그녀와의 다툼", date: "2021-07-05"),
        Feed(pics: "dgun12", place: "여의도 더 현대", message: "준이형이랑 같이 본 muziktiger", date: "2022-08-02"),
    ]
}
