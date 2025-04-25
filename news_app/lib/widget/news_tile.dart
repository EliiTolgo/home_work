import 'package:flutter/material.dart';
import 'package:news_app/model/articles_model.dart';
import 'package:news_app/style/app_text_styles.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articlesModel});
  final ArticlesModel articlesModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, left: 10, right: 10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Image.network(
              articlesModel.image ??
                  'https://marketplace.canva.com/EAGD3XkUBK0/1/0/1600w/canva-red-and-white-general-news-breaking-news-video-8HCnEsJgmXA.jpg',
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 16),
          Text(
            articlesModel.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: AppTextStyles.medium20,
          ),
          SizedBox(height: 6),
          Text(
            articlesModel.subTitle ?? 'no sub title',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: AppTextStyles.medium14.copyWith(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
