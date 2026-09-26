package com.netease.dwrg;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.provider.MediaStore;
import android.util.Log;
import com.netease.neox.NativeInterface;
import com.soundcloud.android.crop.Crop;
import java.io.File;
import java.io.FileOutputStream;

/* loaded from: classes.dex */
class ImagePicker {
    static final int PICK_IMAGE_ACTIVITY_FAIL = 2;
    static final int PICK_IMAGE_CANCEL = 1;
    static final int PICK_IMAGE_CROP_FAIL = 4;
    static final int PICK_IMAGE_CROP_MODE_AUTO_CROP = 1;
    static final int PICK_IMAGE_CROP_MODE_MANUAL_CROP = 2;
    static final int PICK_IMAGE_CROP_MODE_NOT_CROP = 0;
    static final int PICK_IMAGE_FAIL = 7;
    static final int PICK_IMAGE_OK = 0;
    static final int PICK_IMAGE_PICK_FAIL = 3;
    static final int PICK_IMAGE_PICK_MODE_CAMERA = 0;
    static final int PICK_IMAGE_PICK_MODE_CAMERA_AND_PHOTO_ALBUM = 2;
    static final int PICK_IMAGE_PICK_MODE_PHOTO_ALBUM = 1;
    static final int PICK_IMAGE_PROCESS_FAIL = 5;
    static final int PICK_IMAGE_SAVE_FAIL = 6;
    static final int PICK_IMAGE_SAVE_MODE_CROP_CENTER = 2;
    static final int PICK_IMAGE_SAVE_MODE_CROP_TO_FIT = 1;
    static final int PICK_IMAGE_SAVE_MODE_NOT_SAVE = 0;
    static final int PICK_IMAGE_SAVE_MODE_SCALE_TO_FIT = 3;
    static final int PICK_IMAGE_SAVE_MODE_SHRINK_TO_FIT = 4;
    static final int PICK_IMAGE_SAVE_MODE_STRETCH = 5;
    private int REQUEST_CAPTURE;
    private Activity m_activity;
    private File m_capture_file;
    private int m_crop_aspect_height;
    private int m_crop_aspect_width;
    private File m_crop_file;
    private int m_crop_mode;
    private File m_cropped_img_file;
    private int m_cropped_img_height;
    private int m_cropped_img_max_height;
    private int m_cropped_img_max_width;
    private String m_cropped_img_name;
    private int m_cropped_img_save_mode;
    private int m_cropped_img_width;
    private int m_ori_img_height;
    private int m_ori_img_width;
    private String m_pick_root;
    private File m_picked_img_file;
    private int m_picked_img_height;
    private int m_picked_img_max_height;
    private int m_picked_img_max_width;
    private String m_picked_img_name;
    private int m_picked_img_save_mode;
    private int m_picked_img_width;
    private boolean m_support_camera;

    public ImagePicker(Activity activity) {
        this.m_activity = activity;
    }

    public boolean init() {
        File pickrootdir;
        this.m_pick_root = this.m_activity.getSharedPreferences("neox_config", 0).getString("NeoXRoot", null) + "/Documents/res/picked_image";
        try {
            pickrootdir = new File(this.m_pick_root);
        } catch (Exception e) {
            e = e;
        }
        try {
            if (!pickrootdir.exists()) {
                if (!pickrootdir.mkdirs()) {
                    return false;
                }
            }
            File picktmpdir = new File(pickrootdir, "tmp");
            try {
                if (!picktmpdir.exists()) {
                    if (!picktmpdir.mkdirs()) {
                        return false;
                    }
                }
                this.m_capture_file = new File(picktmpdir, "neox_capture_tmp.jpg");
                this.m_crop_file = new File(picktmpdir, "neox_crop_tmp.jpg");
                this.m_support_camera = this.m_activity.getPackageManager().hasSystemFeature("android.hardware.camera");
                this.REQUEST_CAPTURE = Math.abs(hashCode());
                return true;
            } catch (Exception e2) {
                e2.printStackTrace();
                return false;
            }
        } catch (Exception e3) {
            e = e3;
            e.printStackTrace();
            return false;
        }
    }

    public boolean execute(int pick_mode, int picked_img_save_mode, String picked_img_name, int picked_img_max_width, int picked_img_max_height, int crop_mode, int crop_aspect_width, int crop_aspect_height, int cropped_img_save_mode, String cropped_img_name, int cropped_img_max_width, int cropped_img_max_height) {
        this.m_picked_img_save_mode = picked_img_save_mode;
        this.m_picked_img_name = picked_img_name;
        this.m_picked_img_max_width = picked_img_max_width;
        this.m_picked_img_max_height = picked_img_max_height;
        this.m_crop_mode = crop_mode;
        this.m_crop_aspect_width = crop_aspect_width;
        this.m_crop_aspect_height = crop_aspect_height;
        this.m_cropped_img_save_mode = cropped_img_save_mode;
        this.m_cropped_img_name = cropped_img_name;
        this.m_cropped_img_max_width = cropped_img_max_width;
        this.m_cropped_img_max_height = cropped_img_max_height;
        try {
            if (this.m_capture_file.exists()) {
                this.m_capture_file.delete();
            }
            if (this.m_crop_file.exists()) {
                this.m_crop_file.delete();
            }
            if (pick_mode == 0) {
                this.m_activity.runOnUiThread(new Runnable() { // from class: com.netease.dwrg.ImagePicker.1
                    @Override // java.lang.Runnable
                    public void run() {
                        ImagePicker.this.startCameraActivity();
                    }
                });
            } else if (pick_mode == 1) {
                this.m_activity.runOnUiThread(new Runnable() { // from class: com.netease.dwrg.ImagePicker.2
                    @Override // java.lang.Runnable
                    public void run() {
                        ImagePicker.this.startPhotoAlbumActivity();
                    }
                });
            } else if (pick_mode == 2) {
                final AlertDialog.Builder builder = new AlertDialog.Builder(this.m_activity);
                builder.setTitle(com.identityv.shrek156.R.string.neox_pick_image);
                builder.setIcon(com.identityv.shrek156.R.drawable.ic_launcher);
                builder.setCancelable(false);
                if (this.m_support_camera) {
                    builder.setPositiveButton(com.identityv.shrek156.R.string.neox_pick_from_camera, new DialogInterface.OnClickListener() { // from class: com.netease.dwrg.ImagePicker.3
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialog, int which) {
                            ImagePicker.this.startCameraActivity();
                        }
                    });
                }
                builder.setNeutralButton(com.identityv.shrek156.R.string.neox_pick_from_library, new DialogInterface.OnClickListener() { // from class: com.netease.dwrg.ImagePicker.4
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialog, int which) {
                        ImagePicker.this.startPhotoAlbumActivity();
                    }
                });
                builder.setNegativeButton(com.identityv.shrek156.R.string.neox_cancel, new DialogInterface.OnClickListener() { // from class: com.netease.dwrg.ImagePicker.5
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialog, int which) {
                        ImagePicker.this.fail(1);
                    }
                });
                this.m_activity.runOnUiThread(new Runnable() { // from class: com.netease.dwrg.ImagePicker.6
                    @Override // java.lang.Runnable
                    public void run() {
                        builder.create().show();
                    }
                });
            } else {
                return false;
            }
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startCameraActivity() {
        Uri uri = Uri.fromFile(this.m_capture_file);
        Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
        intent.putExtra("output", uri);
        if (intent.resolveActivity(this.m_activity.getPackageManager()) != null) {
            this.m_activity.startActivityForResult(intent, this.REQUEST_CAPTURE);
        } else {
            fail(2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startPhotoAlbumActivity() {
        Intent intent = new Intent("android.intent.action.PICK");
        intent.setData(MediaStore.Images.Media.EXTERNAL_CONTENT_URI);
        if (intent.resolveActivity(this.m_activity.getPackageManager()) != null) {
            this.m_activity.startActivityForResult(intent, Crop.REQUEST_PICK);
        } else {
            fail(2);
        }
    }

    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        if (requestCode == this.REQUEST_CAPTURE) {
            if (resultCode == -1) {
                if (this.m_capture_file.exists()) {
                    Uri captured_img_uri = Uri.fromFile(this.m_capture_file);
                    processPickedImage(captured_img_uri);
                    return;
                } else {
                    fail(3);
                    return;
                }
            }
            if (resultCode == 0) {
                fail(1);
                return;
            } else {
                fail(3);
                return;
            }
        }
        if (requestCode == 9162) {
            if (resultCode == -1) {
                Uri img_uri = data.getData();
                processPickedImage(img_uri);
                return;
            } else if (resultCode == 0) {
                fail(1);
                return;
            } else {
                fail(3);
                return;
            }
        }
        if (requestCode == 6709) {
            if (resultCode == -1) {
                if (this.m_crop_file.exists()) {
                    Uri img_uri2 = Crop.getOutput(data);
                    processCroppedImage(img_uri2);
                    return;
                } else {
                    fail(4);
                    return;
                }
            }
            if (resultCode == 0) {
                fail(1);
            } else {
                fail(4);
            }
        }
    }

    private void processPickedImage(Uri captured_img_uri) {
        Bitmap picked_img = getImage(captured_img_uri);
        if (picked_img == null) {
            fail(3);
            return;
        }
        this.m_ori_img_width = picked_img.getWidth();
        this.m_ori_img_height = picked_img.getHeight();
        if (this.m_ori_img_width <= 0 || this.m_ori_img_height <= 0) {
            fail(3);
            return;
        }
        if (this.m_picked_img_save_mode == 0) {
            this.m_picked_img_file = null;
            this.m_picked_img_width = 0;
            this.m_picked_img_height = 0;
        } else {
            Bitmap picked_img2 = processImage(picked_img, this.m_picked_img_save_mode, this.m_picked_img_max_width, this.m_picked_img_max_height);
            if (picked_img2 == null) {
                fail(5);
                return;
            }
            this.m_picked_img_width = picked_img2.getWidth();
            this.m_picked_img_height = picked_img2.getHeight();
            if (this.m_picked_img_width <= 0 || this.m_picked_img_height <= 0) {
                fail(5);
                return;
            }
            this.m_picked_img_file = createImageFile(this.m_picked_img_name, picked_img2, "_picked");
            if (!saveImage(picked_img2, this.m_picked_img_file)) {
                fail(6);
                return;
            }
        }
        if (this.m_crop_mode == 0 || this.m_cropped_img_save_mode == 0) {
            String picked_img_path = null;
            if (this.m_picked_img_file != null) {
                picked_img_path = this.m_picked_img_file.getAbsolutePath();
            }
            NativeInterface.NativeOnPickResult(0, this.m_ori_img_width, this.m_ori_img_height, picked_img_path, this.m_picked_img_width, this.m_picked_img_height, null, 0, 0);
            return;
        }
        if (this.m_crop_mode == 1) {
            Bitmap cropped_img = getImage(captured_img_uri);
            if (cropped_img == null) {
                fail(3);
                return;
            }
            if (this.m_crop_aspect_width > 0 && this.m_crop_aspect_height > 0) {
                int crop_width = this.m_ori_img_width;
                int crop_height = (this.m_crop_aspect_height * crop_width) / this.m_crop_aspect_width;
                if (crop_height > this.m_ori_img_height) {
                    crop_height = this.m_ori_img_height;
                    crop_width = (this.m_crop_aspect_width * crop_height) / this.m_crop_aspect_height;
                }
                cropped_img = processBitmapCropCenter(cropped_img, crop_width, crop_height);
                if (cropped_img == null) {
                    fail(4);
                    return;
                }
            }
            Bitmap cropped_img2 = processImage(cropped_img, this.m_cropped_img_save_mode, this.m_cropped_img_max_width, this.m_cropped_img_max_height);
            if (cropped_img2 == null) {
                fail(5);
                return;
            }
            this.m_cropped_img_width = cropped_img2.getWidth();
            this.m_cropped_img_height = cropped_img2.getHeight();
            if (this.m_cropped_img_width <= 0 || this.m_cropped_img_height <= 0) {
                fail(4);
                return;
            }
            this.m_cropped_img_file = createImageFile(this.m_cropped_img_name, cropped_img2, "_cropped");
            if (!saveImage(cropped_img2, this.m_cropped_img_file)) {
                fail(6);
                return;
            }
            String picked_img_path2 = null;
            if (this.m_picked_img_file != null) {
                picked_img_path2 = this.m_picked_img_file.getAbsolutePath();
            }
            String cropped_img_path = null;
            if (this.m_cropped_img_file != null) {
                cropped_img_path = this.m_cropped_img_file.getAbsolutePath();
            }
            NativeInterface.NativeOnPickResult(0, this.m_ori_img_width, this.m_ori_img_height, picked_img_path2, this.m_picked_img_width, this.m_picked_img_height, cropped_img_path, this.m_cropped_img_width, this.m_cropped_img_height);
            return;
        }
        Crop crop = new Crop(captured_img_uri);
        if (crop == null) {
            fail(4);
            return;
        }
        crop.output(Uri.fromFile(this.m_crop_file));
        if (this.m_crop_aspect_width > 0 && this.m_crop_aspect_height > 0) {
            crop.withAspect(this.m_crop_aspect_width, this.m_crop_aspect_height);
        }
        crop.start(this.m_activity);
    }

    private void processCroppedImage(Uri cropped_img_uri) {
        Bitmap cropped_img = getImage(cropped_img_uri);
        if (cropped_img == null) {
            fail(4);
            return;
        }
        Bitmap cropped_img2 = processImage(cropped_img, this.m_cropped_img_save_mode, this.m_cropped_img_max_width, this.m_cropped_img_max_height);
        if (cropped_img2 == null) {
            fail(5);
            return;
        }
        this.m_cropped_img_width = cropped_img2.getWidth();
        this.m_cropped_img_height = cropped_img2.getHeight();
        if (this.m_cropped_img_width <= 0 || this.m_cropped_img_height <= 0) {
            fail(5);
            return;
        }
        this.m_cropped_img_file = createImageFile(this.m_cropped_img_name, cropped_img2, "_cropped");
        if (!saveImage(cropped_img2, this.m_cropped_img_file)) {
            fail(6);
            return;
        }
        String picked_img_path = null;
        if (this.m_picked_img_file != null) {
            picked_img_path = this.m_picked_img_file.getAbsolutePath();
        }
        String cropped_img_path = null;
        if (this.m_cropped_img_file != null) {
            cropped_img_path = this.m_cropped_img_file.getAbsolutePath();
        }
        NativeInterface.NativeOnPickResult(0, this.m_ori_img_width, this.m_ori_img_height, picked_img_path, this.m_picked_img_width, this.m_picked_img_height, cropped_img_path, this.m_cropped_img_width, this.m_cropped_img_height);
    }

    Bitmap getImage(Uri img_uri) {
        if (img_uri == null) {
            return null;
        }
        try {
            Bitmap bitmap = MediaStore.Images.Media.getBitmap(this.m_activity.getContentResolver(), img_uri);
            return bitmap;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    private Bitmap processImage(Bitmap bitmap, int save_mode, int max_width, int max_height) {
        switch (save_mode) {
            case 0:
                return null;
            case 1:
                return processBitmapCropToFit(bitmap, max_width, max_height);
            case 2:
                return processBitmapCropCenter(bitmap, max_width, max_height);
            case 3:
                return processBitmapScaleToFit(bitmap, max_width, max_height);
            case 4:
                return processBitmapShrinkToFit(bitmap, max_width, max_height);
            case 5:
                return processBitmapStretch(bitmap, max_width, max_height);
            default:
                Log.e("PickImage", "Unknown save mode: " + Integer.toString(save_mode));
                return null;
        }
    }

    private File createImageFile(String expected_img_name, Bitmap img, String suffix) {
        if (expected_img_name != null) {
            return new File(this.m_pick_root, expected_img_name + ".png");
        }
        String img_uri_hash = Integer.toHexString(img.hashCode());
        return new File(this.m_pick_root, img_uri_hash + suffix + ".png");
    }

    private boolean saveImage(Bitmap bitmap, File dst_file) {
        if (bitmap == null) {
            return false;
        }
        try {
            FileOutputStream outStream = new FileOutputStream(dst_file);
            if (!bitmap.compress(Bitmap.CompressFormat.PNG, 100, outStream)) {
                return false;
            }
            try {
                outStream.close();
                return true;
            } catch (Exception e) {
                e.printStackTrace();
                return false;
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fail(int fail_type) {
        NativeInterface.NativeOnPickResult(fail_type, 0, 0, null, 0, 0, null, 0, 0);
    }

    private Bitmap processBitmapCropCenter(Bitmap bitmap, int max_width, int max_height) {
        int img_width = bitmap.getWidth();
        int img_height = bitmap.getHeight();
        if (img_width <= 0 || img_height <= 0) {
            return null;
        }
        if (max_width > 0 || max_height > 0) {
            if (max_width <= 0 && max_height > 0) {
                if (max_height < img_height) {
                    int y = (img_height - max_height) / 2;
                    return Bitmap.createBitmap(bitmap, 0, y, img_width, max_height);
                }
                return bitmap;
            }
            if (max_width > 0 && max_height <= 0) {
                if (max_width < img_width) {
                    int x = (img_width - max_width) / 2;
                    return Bitmap.createBitmap(bitmap, x, 0, max_width, img_height);
                }
                return bitmap;
            }
            int x2 = Math.max(0, (img_width - max_width) / 2);
            int width = Math.min(img_width, max_width);
            int y2 = Math.max(0, (img_height - max_height) / 2);
            int height = Math.min(img_height, max_height);
            return Bitmap.createBitmap(bitmap, x2, y2, width, height);
        }
        return bitmap;
    }

    private Bitmap processBitmapCropToFit(Bitmap bitmap, int max_width, int max_height) {
        int img_width = bitmap.getWidth();
        int img_height = bitmap.getHeight();
        if (img_width <= 0 || img_height <= 0) {
            return null;
        }
        if (max_width <= 0 && max_height <= 0) {
            return bitmap;
        }
        if (max_width <= 0 && max_height > 0) {
            return Bitmap.createScaledBitmap(bitmap, Math.max(1, (img_width * max_height) / img_height), max_height, true);
        }
        if (max_width > 0 && max_height <= 0) {
            return Bitmap.createScaledBitmap(bitmap, max_width, (img_height * max_width) / img_width, true);
        }
        int height = Math.max(1, (max_height * img_width) / max_width);
        int width = img_width;
        if (height > img_height) {
            width = Math.max(1, (width * img_height) / height);
            height = img_height;
        }
        int x = (img_width - width) / 2;
        int y = (img_height - height) / 2;
        return Bitmap.createScaledBitmap(Bitmap.createBitmap(bitmap, x, y, width, height), max_width, max_height, true);
    }

    private Bitmap processBitmapScaleToFit(Bitmap bitmap, int max_width, int max_height) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        if (width <= 0 || height <= 0) {
            return null;
        }
        if (max_width > 0) {
            height = Math.max(1, (height * max_width) / width);
            width = max_width;
        }
        if (max_height > 0 && height > max_height) {
            width = Math.max(1, (width * max_height) / height);
            height = max_height;
        }
        if (width <= 0 || height <= 0) {
            return null;
        }
        return Bitmap.createScaledBitmap(bitmap, width, height, true);
    }

    private Bitmap processBitmapShrinkToFit(Bitmap bitmap, int max_width, int max_height) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        if (width <= 0 || height <= 0) {
            return null;
        }
        if (max_width > 0 && width > max_width) {
            height = Math.max(1, (height * max_width) / width);
            width = max_width;
        }
        if (max_height > 0 && height > max_height) {
            width = Math.max(1, (width * max_height) / height);
            height = max_height;
        }
        if (width <= 0 || height <= 0) {
            return null;
        }
        return Bitmap.createScaledBitmap(bitmap, width, height, true);
    }

    private Bitmap processBitmapStretch(Bitmap bitmap, int max_width, int max_height) {
        int img_width = bitmap.getWidth();
        int img_height = bitmap.getHeight();
        if (img_width <= 0 || img_height <= 0) {
            return null;
        }
        if (max_width > 0 || max_height > 0) {
            if (max_width <= 0 && max_height > 0) {
                return Bitmap.createScaledBitmap(bitmap, img_width, max_height, true);
            }
            if (max_width > 0 && max_height <= 0) {
                return Bitmap.createScaledBitmap(bitmap, max_width, img_height, true);
            }
            return Bitmap.createScaledBitmap(bitmap, max_width, max_height, true);
        }
        return bitmap;
    }
}
