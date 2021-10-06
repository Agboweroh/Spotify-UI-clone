import 'package:flutter/material.dart';
import 'package:musizapp/data/data.dart';

class PlayListHeader extends StatelessWidget {
  const PlayListHeader({Key? key, this.playlist}) : super(key: key);
  final playlist;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Image.asset(
              playlist.imageURL,
              height: 200,
              width: 200,
              fit: BoxFit.cover,
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Playlist',
                  style: Theme.of(context)
                      .textTheme
                      .overline!
                      .copyWith(fontSize: 12),
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  playlist.name,
                  style: Theme.of(context).textTheme.headline2,
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  playlist.description,
                  style: Theme.of(context).textTheme.subtitle1,
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  ' Created by${playlist.creator} • ${playlist.songs.length}, songs, ${playlist.duration}',
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ],
            ))
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        _playlistButton(followers: playlist.followers),
      ],
    );
  }
}

class _playlistButton extends StatelessWidget {
  const _playlistButton({Key? key, required this.followers}) : super(key: key);
  final followers;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(
          style: TextButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 20),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            backgroundColor: Theme.of(context).accentColor,
            primary: Theme.of(context).iconTheme.color,
            textStyle: Theme.of(context)
                .textTheme
                .caption!
                .copyWith(fontSize: 12.0, letterSpacing: 2.2),
          ),
          onPressed: () {},
          child: Text('PLAY'),
        ),
        SizedBox(
          width: 8,
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.favorite_border,
            size: 30,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.more_horiz,
            size: 30,
          ),
        ),
        const Spacer(),
        Text(
          'FOLLOWERS\n$followers',
          style: Theme.of(context).textTheme.overline!.copyWith(fontSize: 12),
          textAlign: TextAlign.right,
        )
      ],
    );
  }
}
