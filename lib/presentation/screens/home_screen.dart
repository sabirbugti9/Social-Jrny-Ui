import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:social_jrny_ui/presentation/widgets/center_star.dart';
import 'package:social_jrny_ui/presentation/widgets/memoji_widget.dart';
import 'package:social_jrny_ui/presentation/widgets/sj_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: SafeArea(child: Padding(padding: const EdgeInsets.symmetric(
          vertical: 50,
          horizontal: 30
        ),
        
        child: Stack(
          alignment: Alignment.center,
          children: [
          _leftEmoji(),
          _rightEmoji(),
          _centerEmoji(),
          _centerStar(),
          const Column(
            children: [
              TopTitle(),
              Spacer(
                flex: 8,
              ),
              StartText(),
              SizedBox(height: 20,),
              PostText(),
              Spacer(),
              GetStartedButton(),
              SizedBox(height: 10,),
              AddExistButton(),
            ],
          )
          ],
        ),
        ),),
      ),

     
    );
  }


























  Positioned _centerStar() {
    return const Positioned(
      // bottom: 200,
      top: 210,
      child: CenterStar(),
    );
  }

  Positioned _centerEmoji() {
    return const Positioned(
      top: 90,
      child: Memoji(
        size: 150,
      ),
    );
  }

  Positioned _rightEmoji() {
    return Positioned(
      left: 180,
      top: 100,
      child: Transform(
        origin: const Offset(60, 60),
        transform: Matrix4.identity()
          ..setEntry(3, 2, 0.001)
          ..rotateY(0.5236),
        child: const Memoji(),
      ),
    );
  }

  Positioned _leftEmoji() {
    return Positioned(
      right: 180,
      top: 100,
      child: Transform(
        transform: Matrix4.identity()
          ..setEntry(3, 2, 0.001)
          ..rotateY(-0.5236),
        origin: const Offset(60, 60),
        child: const Memoji(),
      ),
    );
  }
}

class AddExistButton extends StatelessWidget {
  const AddExistButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SJButton(
      text: 'Add an existing account',
      type: SjButtonType.outlined,
    );
  }
}

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SJButton(
      text: 'Get Started',
      type: SjButtonType.filled,
    );
  }
}

class PostText extends StatelessWidget {
  const PostText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Post, react, and start conversations\nthat bring good vibes only.',
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.bodyLarge,
    );
  }
}

class StartText extends StatelessWidget {
  const StartText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Start your new\nSocial Jrny',
      textAlign: TextAlign.center,
      style: Theme.of(context)
          .textTheme
          .displaySmall
          ?.copyWith(fontWeight: FontWeight.w900),
    );
  }
}

class TopTitle extends StatelessWidget {
  const TopTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      "Sabir Bugti",
      style: GoogleFonts.pacifico(
        fontSize: Theme.of(context).textTheme.titleLarge?.fontSize,
      ),
    );
  }
}
