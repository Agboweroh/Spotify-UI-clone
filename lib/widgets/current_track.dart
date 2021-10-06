import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:musizapp/models/current_track_model.dart';
import 'package:provider/src/provider.dart';

class CurrentTrack extends StatelessWidget {
  const CurrentTrack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 84,
        width: double.infinity,
        color: Colors.black87,
        child: Padding(
          padding: EdgeInsets.all(12.0),
          child: Row(
            children: [
              _TrackInfo(),
              const Spacer(),
              _PlayersControls(),
              const Spacer(),
              if (MediaQuery.of(context).size.width > 800) _MoreControls(),
            ],
          ),
        ));
  }
}

class _TrackInfo extends StatelessWidget {
  const _TrackInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final selected = context.watch<CurrentTrackModel>().selected;
    if (selected == null) return const SizedBox.shrink();
    return Row(
      children: [
        Image.asset(
          'assets/lofigirl.jpg',
          height: 60,
          width: 60,
          fit: BoxFit.cover,
        ),
        const SizedBox(
          width: 12,
        ),
        Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                selected.title,
                style: Theme.of(context).textTheme.bodyText1,
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                selected.artist,
                style: Theme.of(context)
                    .textTheme
                    .subtitle1!
                    .copyWith(color: Colors.grey[300], fontSize: 12),
              ),
            ]),
        const SizedBox(
          width: 12,
        ),
        IconButton(onPressed: () {}, icon: const Icon(Icons.favorite_border))
      ],
    );
  }
}

class _PlayersControls extends StatelessWidget {
  const _PlayersControls({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final selected = context.watch<CurrentTrackModel>().selected;
    return Column(
      children: [
        Row(
          children: [
            IconButton(
              onPressed: () {},
              padding: EdgeInsets.only(),
              iconSize: 20,
              icon: const Icon(
                Icons.shuffle,
              ),
            ),
            IconButton(
              onPressed: () {},
              padding: EdgeInsets.only(),
              iconSize: 20,
              icon: const Icon(
                Icons.skip_previous_outlined,
              ),
            ),
            IconButton(
              onPressed: () {},
              padding: EdgeInsets.only(),
              iconSize: 34,
              icon: const Icon(Icons.play_circle_outline),
            ),
            IconButton(
              onPressed: () {},
              padding: EdgeInsets.only(),
              iconSize: 20,
              icon: const Icon(
                Icons.skip_next_outlined,
              ),
            ),
            IconButton(
              onPressed: () {},
              padding: EdgeInsets.only(),
              iconSize: 20,
              icon: const Icon(
                Icons.repeat,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 4,
        ),
        Row(
          children: [
            Text(
              '0.00',
              style: Theme.of(context).textTheme.caption,
            ),
            const SizedBox(
              width: 8,
            ),
            Container(
              height: 5,
              width: MediaQuery.of(context).size.width * 0.3,
              decoration: BoxDecoration(
                color: Colors.grey[800],
                borderRadius: BorderRadius.circular(2.5),
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Text(
              selected?.duration ?? '0.00',
              style: Theme.of(context).textTheme.caption,
            ),
          ],
        )
      ],
    );
  }
}

class _MoreControls extends StatelessWidget {
  const _MoreControls({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.devices_outlined,
            size: 20,
          ),
        ),
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.volume_up_outlined),
            ),
            Container(
              height: 5,
              width: 70,
              decoration: BoxDecoration(
                color: Colors.grey[800],
                borderRadius: BorderRadius.circular(2.5),
              ),
            ),
          ],
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.fullscreen_outlined,
          ),
        ),
      ],
    );
  }
}
