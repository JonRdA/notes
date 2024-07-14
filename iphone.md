# Transferring Photos via USB on Linux Ubuntu

Yes, it is possible to transfer photos from your iPhone to a PC running Linux Ubuntu via USB without using iTunes. Here are the steps to do so:

## Steps to Transfer Photos

1. **Connect Your iPhone to Your PC:**
   - Use a USB cable to connect your iPhone to your Ubuntu PC.

2. **Trust the Computer:**
   - Unlock your iPhone and if prompted, select **Trust This Computer** on your iPhone.

3. **Install Necessary Packages:**
   - Open a terminal and install the necessary packages for accessing iPhone storage on Ubuntu:
     ```bash
     sudo apt update
     sudo apt install libimobiledevice6 libimobiledevice-utils ifuse
     ```

4. **Mount the iPhone:**
   - Create a directory to mount your iPhone:
     ```bash
     mkdir ~/iPhone
     ```
   - Mount the iPhone to the created directory:
     ```bash
     ifuse ~/iPhone
     ```

5. **Access the Photos:**
   - Navigate to the DCIM directory where your photos are stored:
     ```bash
     cd ~/iPhone/DCIM
     ```
   - You should see folders with your photos, typically named like `100APPLE`, `101APPLE`, etc.

6. **Copy the Photos to Your PC:**
   - Copy the photos from the iPhone to a directory on your PC:
     ```bash
     cp -r ~/iPhone/DCIM/100APPLE ~/Pictures/iPhonePhotos
     ```

## Converting HEIC to JPEG on Ubuntu

After transferring the photos, you can convert the HEIC files to JPEG:

1. **Install ImageMagick and HEIC Support:**
   - Install ImageMagick and the HEIC plugin:
     ```bash
     sudo apt install imagemagick libheif-examples
     ```

2. **Convert HEIC to JPEG:**
   - Use the following script (in `/scripts` dir) to batch convert HEIC files to JPEG:
     ```bash
     #!/bin/bash
 
     # Check for correct number of arguments
     if [ "$#" -ne 2 ]; then
         echo "Usage: $0 <originDir> <destinationDir>"
         exit 1
     fi
 
     # Assign arguments to variables
     originDir="$1"
     destinationDir="$2"
 
     # Ensure destination directory exists
     mkdir -p "$destinationDir"
 
     # Convert .HEIC files to .JPEG
     for file in "$originDir"/*/*.HEIC; do
         if [[ -f "$file" ]]; then
             filename=$(basename "$file" .HEIC)
             convert "$file" "$destinationDir/$filename.jpg"
         else
             echo "No HEIC files found in $originDir"
         fi
     done
 
     # Copy .MOV, .JPEG, .JPG, and .PNG files to the destination directory
     find "$originDir" -type f \( -iname "*.mov" -o -iname "*.jpeg" -o -iname "*.jpg" -o -iname "*.png" \) -exec cp {} "$destinationDir" \;
 
     echo "Conversion and copy process completed."
     ```

   - Save the script to a file, for example, `convert_heic_to_jpeg.sh`.
   - Make the script executable:
     ```bash
     chmod +x convert_heic_to_jpeg.sh
     ```
   - Run the script:
     ```bash
     ./convert_heic_to_jpeg.sh
     ```

This process will transfer your photos from your iPhone to your Ubuntu PC and convert the HEIC files to JPEG format.
