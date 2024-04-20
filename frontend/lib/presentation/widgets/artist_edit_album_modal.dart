import 'package:flutter/material.dart';
class EditSongModal extends StatefulWidget {
  final String currentAlbumName;
  final String currentGenre;
  final String currentDescription;
  final String currentThumbnailPath;

  const EditSongModal({super.key, 
    required this.currentAlbumName,
    required this.currentGenre,
    required this.currentDescription,
    required this.currentThumbnailPath,
  });

  @override
  EditSongModalState createState() => EditSongModalState();
}

class EditSongModalState extends State<EditSongModal> {


@override
void initState() {
  super.initState();
  
}
@override
Widget build(BuildContext context) {
  return Dialog(
    backgroundColor: Colors.black,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
      side: const BorderSide(
        color: Colors.white,
        width: 1.0,
      ),
    ),
    child: SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Edit Album',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10.0),

            GestureDetector(
              onTap: (){},
              child: Image.asset(
                      widget.currentThumbnailPath,
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.2,
                    ),
            ),
            const SizedBox(height: 10.0),
            TextFormField(
              initialValue: widget.currentAlbumName,
              decoration: const InputDecoration(
                hintText: 'Enter new album name',
                hintStyle: TextStyle(color: Colors.grey),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF39DCF3)), 
                ),
              ),
              style: const TextStyle(color: Colors.white),
            ),
            TextFormField(
              initialValue: widget.currentGenre,
              decoration: const InputDecoration(
                hintText: 'Enter new genre',
                hintStyle: TextStyle(color: Colors.grey),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF39DCF3)), 
                ),
              ),
              style: const TextStyle(color: Colors.white),
            ),
            TextFormField(
              initialValue: widget.currentDescription,
              decoration: const InputDecoration(
                hintText: 'Enter new description',
                hintStyle: TextStyle(color: Colors.grey),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF39DCF3)), 
                ),
              ),
              style: const TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: () {
                
                Navigator.pop(context);
              },
              child: const Text('Save Changes', style: TextStyle(color:Color(0xFF39DCF3)),),
              
            ),
          ],
        ),
      ),
    ),
  );
}

}