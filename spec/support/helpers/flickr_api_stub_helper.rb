module FlickrApiStubHelper
  RECENT_RESPONCE = { 'photos':
    { 'page': 1,
      'pages': '100',
      'perpage': 10,
      'total': '1000',
      'photo': [
        { 'id': '24302016344', 'owner': '134575593@N05', 'secret': '72f2a42ea1', 'server': '1631', 'farm': 2,
          'title': "London's pretty houses. #london #photooftheday #londontown #travel #prettylittlelondon",
          'ispublic': 1, 'isfriend': 0, 'isfamily': 0 },
        { 'id': '24302016734', 'owner': '137981303@N02', 'secret': 'a8913eb2a5', 'server': '1632', 'farm': 2,
          'title': '⚪️', 'ispublic': 1, 'isfriend': 0, 'isfamily': 0 },
        { 'id': '24305771763', 'owner': '94358006@N03', 'secret': '1daffca263', 'server': '1496', 'farm': 2,
          'title': '', 'ispublic': 1, 'isfriend': 0, 'isfamily': 0 },
        { 'id': '24305772243', 'owner': '95829767@N05', 'secret': '67b295e355', 'server': '1496', 'farm': 2,
          'title': '2016-02-10_03-59-25', 'ispublic': 1, 'isfriend': 0, 'isfamily': 0 },
        { 'id': '24637134960', 'owner': '135924320@N03', 'secret': '6ec863eaee', 'server': '1583', 'farm': 2,
          'title': 'Venus Swivel Bar Stool Bear Suede', 'ispublic': 1, 'isfriend': 0, 'isfamily': 0 },
        { 'id': '24637135130', 'owner': '10581108@N00', 'secret': 'f4376fbd20', 'server': '1554', 'farm': 2,
          'title': 'b baseball', 'ispublic': 1, 'isfriend': 0, 'isfamily': 0 },
        { 'id': '24814660252', 'owner': '130778244@N07', 'secret': '8ca0305101', 'server': '1716', 'farm': 2,
          'title': 'للبيع خصي   العمر 7 سنوات   مخلص 80 و 120   مطلوب 10 آلاف   المعاينه', 'ispublic': 1,
          'isfriend': 0, 'isfamily': 0 },
        { 'id': '24839282541', 'owner': '7983835@N05', 'secret': '417a30282a', 'server': '1507', 'farm': 2,
          'title': 'Welcome to The Aria Resort and Casino', 'ispublic': 1, 'isfriend': 0, 'isfamily': 0 },
        { 'id': '24906312206', 'owner': '98815300@N05', 'secret': 'ebf473f7c3', 'server': '1514', 'farm': 2,
          'title': 'January ❤️', 'ispublic': 1, 'isfriend': 0, 'isfamily': 0 },
        { 'id': '24932619875', 'owner': '94775320@N04', 'secret': '0f32664be6', 'server': '1441', 'farm': 2,
          'title': 'すべての写真-139', 'ispublic': 1, 'isfriend': 0, 'isfamily': 0 }
      ] }, 'stat': 'ok' }

  RESEND_PHOTO_RESULT = [
    'https://farm2.staticflickr.com/1631/24302016344_72f2a42ea1_q.jpg',
    'https://farm2.staticflickr.com/1632/24302016734_a8913eb2a5_q.jpg',
    'https://farm2.staticflickr.com/1496/24305771763_1daffca263_q.jpg',
    'https://farm2.staticflickr.com/1496/24305772243_67b295e355_q.jpg',
    'https://farm2.staticflickr.com/1583/24637134960_6ec863eaee_q.jpg',
    'https://farm2.staticflickr.com/1554/24637135130_f4376fbd20_q.jpg',
    'https://farm2.staticflickr.com/1716/24814660252_8ca0305101_q.jpg',
    'https://farm2.staticflickr.com/1507/24839282541_417a30282a_q.jpg',
    'https://farm2.staticflickr.com/1514/24906312206_ebf473f7c3_q.jpg',
    'https://farm2.staticflickr.com/1441/24932619875_0f32664be6_q.jpg'
  ]

  def flickr_responce_stub
    recent_response = RECENT_RESPONCE.to_json
    @resent_photo_result = RESEND_PHOTO_RESULT

    stub_request(:post, 'https://api.flickr.com/services/rest/')
      .with(body: { format: 'json', method: 'flickr.photos.getRecent', nojsoncallback: '1', per_page: '10' })
      .and_return(body: recent_response)
  end
end