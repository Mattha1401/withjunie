import 'package:flutter/material.dart';

class InstaAccount extends StatelessWidget {
  final String username = 'Tatchai l.'; // Replace with dynamic username
  final String bio = 'because of u ishy'; // Replace with dynamic bio
  final String profileImageUrl = 'https://scontent-bkk1-1.xx.fbcdn.net/v/t39.30808-6/459431029_501477272630070_5854050842473572926_n.jpg?stp=cp6_dst-jpg&_nc_cat=109&ccb=1-7&_nc_sid=aa7b47&_nc_ohc=jqiIvLtA41EQ7kNvgGjbwyH&_nc_ht=scontent-bkk1-1.xx&_nc_gid=A2p94xNS_RgF7JWQmGhWbXy&oh=00_AYCdFlbdF3Bde6G7xqPjhq7OwSb84xrgbMVMK_BZkFEKKg&oe=670AC261'; // Replace with dynamic profile image URL
  final List<String> userPosts = [
    'https://scontent-bkk1-1.xx.fbcdn.net/v/t39.30808-6/453743528_868993341759975_3708927656363620023_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=833d8c&_nc_ohc=SBrXNA-Mv2UQ7kNvgGnn94z&_nc_ht=scontent-bkk1-1.xx&_nc_gid=AxwX1Df5rC9R0h8KgrClowA&oh=00_AYC1kAl1AvhWvaX4KLSunyRc0nFJAtHcXvMDZ37dNIUGwg&oe=670AC961',
    'https://scontent-bkk1-2.xx.fbcdn.net/v/t39.30808-6/441868574_890567496269226_6990921830261576383_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=833d8c&_nc_ohc=uhw0CK1tWYwQ7kNvgEhfoyg&_nc_ht=scontent-bkk1-2.xx&_nc_gid=AYs7RwfSRwedBx6nt5qKKzb&oh=00_AYDBvDAqKzfYaI092raJpJ3u-A1qLW4W3LZMDp6xhn9PJw&oe=670AE2DD',
    'https://scontent-bkk1-2.xx.fbcdn.net/v/t39.30808-6/458642839_889418373050805_6760014453461774463_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=833d8c&_nc_ohc=9QIGZNTUY1UQ7kNvgEf2r6W&_nc_ht=scontent-bkk1-2.xx&_nc_gid=ACQgmJ7O4WI-gySvqdSOFRD&oh=00_AYDKuuyiwpYCj1w3S4Umv1Lv4BxVISsYLodxYEaDIci5ng&oe=670ACBA6',
    'https://scontent-bkk1-1.xx.fbcdn.net/v/t39.30808-6/457303604_887980786527897_6289751686172532331_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=833d8c&_nc_ohc=flRc6Y0V8FMQ7kNvgH8Lvpb&_nc_ht=scontent-bkk1-1.xx&_nc_gid=AFGOhwC4KO0BQfMAbudsTAg&oh=00_AYDE69EFBJqyIkXgrMQBlWFlwyB5YACEW4Lz3RpaWrmONA&oe=670ABB24',
    'https://scontent-bkk1-1.xx.fbcdn.net/v/t39.30808-6/457197819_882938160365493_2206214293349588775_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=833d8c&_nc_ohc=Pm2ncxGnYBwQ7kNvgEcwbmr&_nc_ht=scontent-bkk1-1.xx&_nc_gid=A4FRoVqy8wWqzIJDpL2hHNZ&oh=00_AYDIMwyVTmvcuTMUdwMzX21vUfgiLxl-TS5oJVd-hT7Amw&oe=670AC5D0',
    'https://scontent-bkk1-2.xx.fbcdn.net/v/t39.30808-6/456654666_880892757236700_4130083861030931475_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=833d8c&_nc_ohc=dUu35-Ks4aAQ7kNvgF1u_Qc&_nc_ht=scontent-bkk1-2.xx&_nc_gid=ANBABStQIh726PDoOvMT--k&oh=00_AYB6HpPgiKN_wjX9Lks3QW9GMn0a6bjeGsYJjlpvzX8ilw&oe=670AD931',
    'https://scontent-bkk1-2.xx.fbcdn.net/v/t39.30808-6/455241148_875978187728157_398903174863249049_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=833d8c&_nc_ohc=GjVMw0tc1oQQ7kNvgH6uSb3&_nc_ht=scontent-bkk1-2.xx&_nc_gid=AihfHTAi7ryEkvEABnpWuDP&oh=00_AYDHXDl6ZhFDJNNQBNVhCEmlQgXdKSbbNmbb68s32jGD0w&oe=670AD9DB',
    'https://scontent-bkk1-1.xx.fbcdn.net/v/t39.30808-6/455052144_875466667779309_132101979423224352_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=833d8c&_nc_ohc=qpYWmI4R7sIQ7kNvgGKH6k9&_nc_ht=scontent-bkk1-1.xx&_nc_gid=ARNtYAigsozQ3TqXCe9NPAe&oh=00_AYA43ry4DKWWlVu-rR3q1uDi4p9g_igkB7857PjHxAR1lw&oe=670AD197',
    'https://scontent-bkk1-1.xx.fbcdn.net/v/t39.30808-6/455241074_874099674582675_353052157995536185_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=833d8c&_nc_ohc=yrOSUEJcDxoQ7kNvgHRYrWK&_nc_ht=scontent-bkk1-1.xx&_nc_gid=AkbCcrmHRa8FyfCCKuwmL16&oh=00_AYCkCa9ZAjoyF3Dtkmh__3bgsPHkFVxefpd1YFEmxwvkHw&oe=670AD330',
  ]; // Replace with dynamic post image URLs

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(username),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            icon: const Icon(Icons.more_horiz, color: Colors.black),
            onPressed: () {
              // Handle more options
            },
          ),
        ],
      ),
      body: Column(
        children: [
          _buildProfileHeader(),
          _buildBio(),
          _buildUserPostsGrid(),
        ],
      ),
    );
  }

  Widget _buildProfileHeader() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: NetworkImage(profileImageUrl),
          ),
          const SizedBox(width: 16.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  username,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(height: 8.0),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Posts: 0'),
                    Text('Followers: 0'),
                    Text('Following: 0'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBio() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Text(
        bio,
        style: TextStyle(color: Colors.grey[600]),
      ),
    );
  }

  Widget _buildUserPostsGrid() {
    return Expanded(
      child: GridView.builder(
        padding: const EdgeInsets.all(4.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, // Number of items per row
          mainAxisSpacing: 4.0, // Spacing between rows
          crossAxisSpacing: 4.0, // Spacing between columns
        ),
        itemCount: userPosts.length,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.network(
                userPosts[index],
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: InstaAccount(),
  ));
}
