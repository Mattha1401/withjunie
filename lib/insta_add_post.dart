import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart'; // For picking images from the gallery
import 'dart:io'; // To handle file operations

class InstaAddPost extends StatefulWidget {
  @override
  _InstaAddPostState createState() => _InstaAddPostState();
}

class _InstaAddPostState extends State<InstaAddPost> {
  File? _image; // Variable to hold the selected image
  final _captionController = TextEditingController(); // Controller for the caption text field

  Future<void> _pickImage() async {
    final ImagePicker _picker = ImagePicker();
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  void _submitPost() {
    // Handle post submission logic here (e.g., upload to server, save in local storage, etc.)
    if (_image != null) {
      print("Post submitted with image: ${_image!.path} and caption: ${_captionController.text}");
      // Clear the fields after submission
      setState(() {
        _image = null;
        _captionController.clear();
      });
      // Show a confirmation message
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Post submitted successfully!')),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please select an image.')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Post'),
        actions: [
          IconButton(
            icon: const Icon(Icons.check),
            onPressed: _submitPost,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            GestureDetector(
              onTap: _pickImage, // Trigger image picking when tapped
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: _image == null
                    ? const Center(child: Text('Tap to select an image'))
                    : ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.file(
                          _image!,
                          fit: BoxFit.cover,
                        ),
                      ),
              ),
            ),
            const SizedBox(height: 16.0),
            TextField(
              controller: _captionController,
              decoration: const InputDecoration(
                hintText: 'Write a caption...',
                border: OutlineInputBorder(),
              ),
              maxLines: 3, // Allow for multi-line captions
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: InstaAddPost(),
  ));
}
