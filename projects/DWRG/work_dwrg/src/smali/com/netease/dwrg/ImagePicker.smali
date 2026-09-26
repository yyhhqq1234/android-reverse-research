.class Lcom/netease/dwrg/ImagePicker;
.super Ljava/lang/Object;
.source "ImagePicker.java"


# static fields
.field static final PICK_IMAGE_ACTIVITY_FAIL:I = 0x2

.field static final PICK_IMAGE_CANCEL:I = 0x1

.field static final PICK_IMAGE_CROP_FAIL:I = 0x4

.field static final PICK_IMAGE_CROP_MODE_AUTO_CROP:I = 0x1

.field static final PICK_IMAGE_CROP_MODE_MANUAL_CROP:I = 0x2

.field static final PICK_IMAGE_CROP_MODE_NOT_CROP:I = 0x0

.field static final PICK_IMAGE_FAIL:I = 0x7

.field static final PICK_IMAGE_OK:I = 0x0

.field static final PICK_IMAGE_PICK_FAIL:I = 0x3

.field static final PICK_IMAGE_PICK_MODE_CAMERA:I = 0x0

.field static final PICK_IMAGE_PICK_MODE_CAMERA_AND_PHOTO_ALBUM:I = 0x2

.field static final PICK_IMAGE_PICK_MODE_PHOTO_ALBUM:I = 0x1

.field static final PICK_IMAGE_PROCESS_FAIL:I = 0x5

.field static final PICK_IMAGE_SAVE_FAIL:I = 0x6

.field static final PICK_IMAGE_SAVE_MODE_CROP_CENTER:I = 0x2

.field static final PICK_IMAGE_SAVE_MODE_CROP_TO_FIT:I = 0x1

.field static final PICK_IMAGE_SAVE_MODE_NOT_SAVE:I = 0x0

.field static final PICK_IMAGE_SAVE_MODE_SCALE_TO_FIT:I = 0x3

.field static final PICK_IMAGE_SAVE_MODE_SHRINK_TO_FIT:I = 0x4

.field static final PICK_IMAGE_SAVE_MODE_STRETCH:I = 0x5


# instance fields
.field private REQUEST_CAPTURE:I

.field private m_activity:Landroid/app/Activity;

.field private m_capture_file:Ljava/io/File;

.field private m_crop_aspect_height:I

.field private m_crop_aspect_width:I

.field private m_crop_file:Ljava/io/File;

.field private m_crop_mode:I

.field private m_cropped_img_file:Ljava/io/File;

.field private m_cropped_img_height:I

.field private m_cropped_img_max_height:I

.field private m_cropped_img_max_width:I

.field private m_cropped_img_name:Ljava/lang/String;

.field private m_cropped_img_save_mode:I

.field private m_cropped_img_width:I

.field private m_ori_img_height:I

.field private m_ori_img_width:I

.field private m_pick_root:Ljava/lang/String;

.field private m_picked_img_file:Ljava/io/File;

.field private m_picked_img_height:I

.field private m_picked_img_max_height:I

.field private m_picked_img_max_width:I

.field private m_picked_img_name:Ljava/lang/String;

.field private m_picked_img_save_mode:I

.field private m_picked_img_width:I

.field private m_support_camera:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/netease/dwrg/ImagePicker;->m_activity:Landroid/app/Activity;

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/netease/dwrg/ImagePicker;)V
    .locals 0
    .param p0, "x0"    # Lcom/netease/dwrg/ImagePicker;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/netease/dwrg/ImagePicker;->startCameraActivity()V

    return-void
.end method

.method static synthetic access$100(Lcom/netease/dwrg/ImagePicker;)V
    .locals 0
    .param p0, "x0"    # Lcom/netease/dwrg/ImagePicker;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/netease/dwrg/ImagePicker;->startPhotoAlbumActivity()V

    return-void
.end method

.method static synthetic access$200(Lcom/netease/dwrg/ImagePicker;I)V
    .locals 0
    .param p0, "x0"    # Lcom/netease/dwrg/ImagePicker;
    .param p1, "x1"    # I

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/netease/dwrg/ImagePicker;->fail(I)V

    return-void
.end method

.method private createImageFile(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/io/File;
    .locals 5
    .param p1, "expected_img_name"    # Ljava/lang/String;
    .param p2, "img"    # Landroid/graphics/Bitmap;
    .param p3, "suffix"    # Ljava/lang/String;

    .prologue
    .line 549
    if-eqz p1, :cond_0

    .line 550
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/netease/dwrg/ImagePicker;->m_pick_root:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    :goto_0
    return-object v1

    .line 552
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 553
    .local v0, "img_uri_hash":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/netease/dwrg/ImagePicker;->m_pick_root:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private fail(I)V
    .locals 9
    .param p1, "fail_type"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 588
    move v0, p1

    move v2, v1

    move v4, v1

    move v5, v1

    move-object v6, v3

    move v7, v1

    move v8, v1

    invoke-static/range {v0 .. v8}, Lcom/netease/neox/NativeInterface;->NativeOnPickResult(IIILjava/lang/String;IILjava/lang/String;II)V

    .line 589
    return-void
.end method

.method private processBitmapCropCenter(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "max_width"    # I
    .param p3, "max_height"    # I

    .prologue
    const/4 v7, 0x0

    .line 595
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 596
    .local v2, "img_width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 598
    .local v1, "img_height":I
    if-lez v2, :cond_0

    if-gtz v1, :cond_2

    .line 599
    :cond_0
    const/4 p1, 0x0

    .line 624
    .end local p1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    :goto_0
    return-object p1

    .line 602
    .restart local p1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    if-gtz p2, :cond_3

    if-lez p3, :cond_1

    .line 604
    :cond_3
    if-gtz p2, :cond_4

    if-lez p3, :cond_4

    .line 605
    if-ge p3, v1, :cond_1

    .line 608
    sub-int v6, v1, p3

    div-int/lit8 v5, v6, 0x2

    .line 609
    .local v5, "y":I
    invoke-static {p1, v7, v5, v2, p3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    .line 611
    .end local v5    # "y":I
    :cond_4
    if-lez p2, :cond_5

    if-gtz p3, :cond_5

    .line 612
    if-ge p2, v2, :cond_1

    .line 615
    sub-int v6, v2, p2

    div-int/lit8 v4, v6, 0x2

    .line 616
    .local v4, "x":I
    invoke-static {p1, v4, v7, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    .line 620
    .end local v4    # "x":I
    :cond_5
    sub-int v6, v2, p2

    div-int/lit8 v6, v6, 0x2

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 621
    .restart local v4    # "x":I
    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 622
    .local v3, "width":I
    sub-int v6, v1, p3

    div-int/lit8 v6, v6, 0x2

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 623
    .restart local v5    # "y":I
    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 624
    .local v0, "height":I
    invoke-static {p1, v4, v5, v3, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0
.end method

.method private processBitmapCropToFit(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "max_width"    # I
    .param p3, "max_height"    # I

    .prologue
    const/4 v7, 0x1

    .line 630
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 631
    .local v2, "img_width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 633
    .local v1, "img_height":I
    if-lez v2, :cond_0

    if-gtz v1, :cond_1

    .line 634
    :cond_0
    const/4 v6, 0x0

    .line 664
    :goto_0
    return-object v6

    .line 637
    :cond_1
    if-gtz p2, :cond_2

    if-gtz p3, :cond_2

    move-object v6, p1

    .line 639
    goto :goto_0

    .line 640
    :cond_2
    if-gtz p2, :cond_3

    if-lez p3, :cond_3

    .line 641
    mul-int v6, v2, p3

    div-int/2addr v6, v1

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 642
    .local v3, "width":I
    move v0, p3

    .line 643
    .local v0, "height":I
    invoke-static {p1, v3, v0, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_0

    .line 644
    .end local v0    # "height":I
    .end local v3    # "width":I
    :cond_3
    if-lez p2, :cond_4

    if-gtz p3, :cond_4

    .line 645
    move v3, p2

    .line 646
    .restart local v3    # "width":I
    mul-int v6, v1, p2

    div-int v0, v6, v2

    .line 647
    .restart local v0    # "height":I
    invoke-static {p1, v3, v0, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_0

    .line 650
    .end local v0    # "height":I
    .end local v3    # "width":I
    :cond_4
    mul-int v6, p3, v2

    div-int/2addr v6, p2

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 651
    .restart local v0    # "height":I
    move v3, v2

    .line 653
    .restart local v3    # "width":I
    if-le v0, v1, :cond_5

    .line 654
    mul-int v6, v3, v1

    div-int/2addr v6, v0

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 655
    move v0, v1

    .line 659
    :cond_5
    sub-int v6, v2, v3

    div-int/lit8 v4, v6, 0x2

    .line 660
    .local v4, "x":I
    sub-int v6, v1, v0

    div-int/lit8 v5, v6, 0x2

    .line 661
    .local v5, "y":I
    invoke-static {p1, v4, v5, v3, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 664
    invoke-static {p1, p2, p3, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_0
.end method

.method private processBitmapScaleToFit(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "max_width"    # I
    .param p3, "max_height"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 670
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 671
    .local v1, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 673
    .local v0, "height":I
    if-lez v1, :cond_0

    if-gtz v0, :cond_1

    .line 690
    :cond_0
    :goto_0
    return-object v2

    .line 677
    :cond_1
    if-lez p2, :cond_2

    .line 678
    mul-int v3, v0, p2

    div-int/2addr v3, v1

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 679
    move v1, p2

    .line 682
    :cond_2
    if-lez p3, :cond_3

    if-le v0, p3, :cond_3

    .line 683
    mul-int v3, v1, p3

    div-int/2addr v3, v0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 684
    move v0, p3

    .line 687
    :cond_3
    if-lez v1, :cond_0

    if-lez v0, :cond_0

    .line 688
    invoke-static {p1, v1, v0, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0
.end method

.method private processBitmapShrinkToFit(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "max_width"    # I
    .param p3, "max_height"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 696
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 697
    .local v1, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 699
    .local v0, "height":I
    if-lez v1, :cond_0

    if-gtz v0, :cond_1

    .line 716
    :cond_0
    :goto_0
    return-object v2

    .line 703
    :cond_1
    if-lez p2, :cond_2

    if-le v1, p2, :cond_2

    .line 704
    mul-int v3, v0, p2

    div-int/2addr v3, v1

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 705
    move v1, p2

    .line 708
    :cond_2
    if-lez p3, :cond_3

    if-le v0, p3, :cond_3

    .line 709
    mul-int v3, v1, p3

    div-int/2addr v3, v0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 710
    move v0, p3

    .line 713
    :cond_3
    if-lez v1, :cond_0

    if-lez v0, :cond_0

    .line 714
    invoke-static {p1, v1, v0, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0
.end method

.method private processBitmapStretch(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "max_width"    # I
    .param p3, "max_height"    # I

    .prologue
    const/4 v4, 0x1

    .line 722
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 723
    .local v2, "img_width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 724
    .local v1, "img_height":I
    if-lez v2, :cond_0

    if-gtz v1, :cond_2

    .line 725
    :cond_0
    const/4 p1, 0x0

    .line 741
    .end local p1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    :goto_0
    return-object p1

    .line 728
    .restart local p1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    if-gtz p2, :cond_3

    if-lez p3, :cond_1

    .line 730
    :cond_3
    if-gtz p2, :cond_4

    if-lez p3, :cond_4

    .line 731
    move v3, v2

    .line 732
    .local v3, "width":I
    move v0, p3

    .line 733
    .local v0, "height":I
    invoke-static {p1, v3, v0, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    .line 734
    .end local v0    # "height":I
    .end local v3    # "width":I
    :cond_4
    if-lez p2, :cond_5

    if-gtz p3, :cond_5

    .line 735
    move v3, p2

    .line 736
    .restart local v3    # "width":I
    move v0, v1

    .line 737
    .restart local v0    # "height":I
    invoke-static {p1, v3, v0, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    .line 739
    .end local v0    # "height":I
    .end local v3    # "width":I
    :cond_5
    move v3, p2

    .line 740
    .restart local v3    # "width":I
    move v0, p3

    .line 741
    .restart local v0    # "height":I
    invoke-static {p1, v3, v0, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0
.end method

.method private processCroppedImage(Landroid/net/Uri;)V
    .locals 10
    .param p1, "cropped_img_uri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x5

    .line 437
    invoke-virtual {p0, p1}, Lcom/netease/dwrg/ImagePicker;->getImage(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 438
    .local v9, "cropped_img":Landroid/graphics/Bitmap;
    if-nez v9, :cond_0

    .line 440
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/netease/dwrg/ImagePicker;->fail(I)V

    .line 482
    :goto_0
    return-void

    .line 445
    :cond_0
    iget v0, p0, Lcom/netease/dwrg/ImagePicker;->m_cropped_img_save_mode:I

    iget v1, p0, Lcom/netease/dwrg/ImagePicker;->m_cropped_img_max_width:I

    iget v2, p0, Lcom/netease/dwrg/ImagePicker;->m_cropped_img_max_height:I

    invoke-direct {p0, v9, v0, v1, v2}, Lcom/netease/dwrg/ImagePicker;->processImage(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 447
    if-nez v9, :cond_1

    .line 448
    invoke-direct {p0, v4}, Lcom/netease/dwrg/ImagePicker;->fail(I)V

    goto :goto_0

    .line 453
    :cond_1
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/netease/dwrg/ImagePicker;->m_cropped_img_width:I

    .line 454
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/netease/dwrg/ImagePicker;->m_cropped_img_height:I

    .line 455
    iget v0, p0, Lcom/netease/dwrg/ImagePicker;->m_cropped_img_width:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/netease/dwrg/ImagePicker;->m_cropped_img_height:I

    if-gtz v0, :cond_3

    .line 456
    :cond_2
    invoke-direct {p0, v4}, Lcom/netease/dwrg/ImagePicker;->fail(I)V

    goto :goto_0

    .line 461
    :cond_3
    iget-object v0, p0, Lcom/netease/dwrg/ImagePicker;->m_cropped_img_name:Ljava/lang/String;

    const-string v1, "_cropped"

    invoke-direct {p0, v0, v9, v1}, Lcom/netease/dwrg/ImagePicker;->createImageFile(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/dwrg/ImagePicker;->m_cropped_img_file:Ljava/io/File;

    .line 464
    iget-object v0, p0, Lcom/netease/dwrg/ImagePicker;->m_cropped_img_file:Ljava/io/File;

    invoke-direct {p0, v9, v0}, Lcom/netease/dwrg/ImagePicker;->saveImage(Landroid/graphics/Bitmap;Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 465
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/netease/dwrg/ImagePicker;->fail(I)V

    goto :goto_0

    .line 470
    :cond_4
    const/4 v3, 0x0

    .line 471
    .local v3, "picked_img_path":Ljava/lang/String;
    iget-object v0, p0, Lcom/netease/dwrg/ImagePicker;->m_picked_img_file:Ljava/io/File;

    if-eqz v0, :cond_5

    .line 472
    iget-object v0, p0, Lcom/netease/dwrg/ImagePicker;->m_picked_img_file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 474
    :cond_5
    const/4 v6, 0x0

    .line 475
    .local v6, "cropped_img_path":Ljava/lang/String;
    iget-object v0, p0, Lcom/netease/dwrg/ImagePicker;->m_cropped_img_file:Ljava/io/File;

    if-eqz v0, :cond_6

    .line 476
    iget-object v0, p0, Lcom/netease/dwrg/ImagePicker;->m_cropped_img_file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 478
    :cond_6
    const/4 v0, 0x0

    iget v1, p0, Lcom/netease/dwrg/ImagePicker;->m_ori_img_width:I

    iget v2, p0, Lcom/netease/dwrg/ImagePicker;->m_ori_img_height:I

    iget v4, p0, Lcom/netease/dwrg/ImagePicker;->m_picked_img_width:I

    iget v5, p0, Lcom/netease/dwrg/ImagePicker;->m_picked_img_height:I

    iget v7, p0, Lcom/netease/dwrg/ImagePicker;->m_cropped_img_width:I

    iget v8, p0, Lcom/netease/dwrg/ImagePicker;->m_cropped_img_height:I

    invoke-static/range {v0 .. v8}, Lcom/netease/neox/NativeInterface;->NativeOnPickResult(IIILjava/lang/String;IILjava/lang/String;II)V

    goto :goto_0
.end method

.method private processImage(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "save_mode"    # I
    .param p3, "max_width"    # I
    .param p4, "max_height"    # I

    .prologue
    .line 505
    packed-switch p2, :pswitch_data_0

    .line 539
    const-string v0, "PickImage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown save mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    const/4 p1, 0x0

    .line 544
    :goto_0
    return-object p1

    .line 509
    :pswitch_0
    const/4 p1, 0x0

    .line 511
    goto :goto_0

    .line 514
    :pswitch_1
    invoke-direct {p0, p1, p3, p4}, Lcom/netease/dwrg/ImagePicker;->processBitmapCropToFit(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 516
    goto :goto_0

    .line 519
    :pswitch_2
    invoke-direct {p0, p1, p3, p4}, Lcom/netease/dwrg/ImagePicker;->processBitmapCropCenter(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 521
    goto :goto_0

    .line 524
    :pswitch_3
    invoke-direct {p0, p1, p3, p4}, Lcom/netease/dwrg/ImagePicker;->processBitmapScaleToFit(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 526
    goto :goto_0

    .line 529
    :pswitch_4
    invoke-direct {p0, p1, p3, p4}, Lcom/netease/dwrg/ImagePicker;->processBitmapShrinkToFit(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 531
    goto :goto_0

    .line 534
    :pswitch_5
    invoke-direct {p0, p1, p3, p4}, Lcom/netease/dwrg/ImagePicker;->processBitmapStretch(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 536
    goto :goto_0

    .line 505
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private processPickedImage(Landroid/net/Uri;)V
    .locals 14
    .param p1, "captured_img_uri"    # Landroid/net/Uri;

    .prologue
    .line 301
    invoke-virtual {p0, p1}, Lcom/netease/dwrg/ImagePicker;->getImage(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 302
    .local v13, "picked_img":Landroid/graphics/Bitmap;
    if-nez v13, :cond_0

    .line 304
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/netease/dwrg/ImagePicker;->fail(I)V

    .line 433
    :goto_0
    return-void

    .line 309
    :cond_0
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/netease/dwrg/ImagePicker;->m_ori_img_width:I

    .line 310
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/netease/dwrg/ImagePicker;->m_ori_img_height:I

    .line 311
    iget v0, p0, Lcom/netease/dwrg/ImagePicker;->m_ori_img_width:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/netease/dwrg/ImagePicker;->m_ori_img_height:I

    if-gtz v0, :cond_2

    .line 312
    :cond_1
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/netease/dwrg/ImagePicker;->fail(I)V

    goto :goto_0

    .line 316
    :cond_2
    iget v0, p0, Lcom/netease/dwrg/ImagePicker;->m_picked_img_save_mode:I

    if-nez v0, :cond_6

    .line 317
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/dwrg/ImagePicker;->m_picked_img_file:Ljava/io/File;

    .line 318
    const/4 v0, 0x0

    iput v0, p0, Lcom/netease/dwrg/ImagePicker;->m_picked_img_width:I

    .line 319
    const/4 v0, 0x0

    iput v0, p0, Lcom/netease/dwrg/ImagePicker;->m_picked_img_height:I

    .line 349
    :cond_3
    iget v0, p0, Lcom/netease/dwrg/ImagePicker;->m_crop_mode:I

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/netease/dwrg/ImagePicker;->m_cropped_img_save_mode:I

    if-nez v0, :cond_a

    .line 351
    :cond_4
    const/4 v3, 0x0

    .line 352
    .local v3, "picked_img_path":Ljava/lang/String;
    iget-object v0, p0, Lcom/netease/dwrg/ImagePicker;->m_picked_img_file:Ljava/io/File;

    if-eqz v0, :cond_5

    .line 353
    iget-object v0, p0, Lcom/netease/dwrg/ImagePicker;->m_picked_img_file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 355
    :cond_5
    const/4 v0, 0x0

    iget v1, p0, Lcom/netease/dwrg/ImagePicker;->m_ori_img_width:I

    iget v2, p0, Lcom/netease/dwrg/ImagePicker;->m_ori_img_height:I

    iget v4, p0, Lcom/netease/dwrg/ImagePicker;->m_picked_img_width:I

    iget v5, p0, Lcom/netease/dwrg/ImagePicker;->m_picked_img_height:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v0 .. v8}, Lcom/netease/neox/NativeInterface;->NativeOnPickResult(IIILjava/lang/String;IILjava/lang/String;II)V

    goto :goto_0

    .line 322
    .end local v3    # "picked_img_path":Ljava/lang/String;
    :cond_6
    iget v0, p0, Lcom/netease/dwrg/ImagePicker;->m_picked_img_save_mode:I

    iget v1, p0, Lcom/netease/dwrg/ImagePicker;->m_picked_img_max_width:I

    iget v2, p0, Lcom/netease/dwrg/ImagePicker;->m_picked_img_max_height:I

    invoke-direct {p0, v13, v0, v1, v2}, Lcom/netease/dwrg/ImagePicker;->processImage(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 325
    if-nez v13, :cond_7

    .line 327
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/netease/dwrg/ImagePicker;->fail(I)V

    goto :goto_0

    .line 331
    :cond_7
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/netease/dwrg/ImagePicker;->m_picked_img_width:I

    .line 332
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/netease/dwrg/ImagePicker;->m_picked_img_height:I

    .line 333
    iget v0, p0, Lcom/netease/dwrg/ImagePicker;->m_picked_img_width:I

    if-lez v0, :cond_8

    iget v0, p0, Lcom/netease/dwrg/ImagePicker;->m_picked_img_height:I

    if-gtz v0, :cond_9

    .line 334
    :cond_8
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/netease/dwrg/ImagePicker;->fail(I)V

    goto :goto_0

    .line 339
    :cond_9
    iget-object v0, p0, Lcom/netease/dwrg/ImagePicker;->m_picked_img_name:Ljava/lang/String;

    const-string v1, "_picked"

    invoke-direct {p0, v0, v13, v1}, Lcom/netease/dwrg/ImagePicker;->createImageFile(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/dwrg/ImagePicker;->m_picked_img_file:Ljava/io/File;

    .line 342
    iget-object v0, p0, Lcom/netease/dwrg/ImagePicker;->m_picked_img_file:Ljava/io/File;

    invoke-direct {p0, v13, v0}, Lcom/netease/dwrg/ImagePicker;->saveImage(Landroid/graphics/Bitmap;Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 343
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/netease/dwrg/ImagePicker;->fail(I)V

    goto/16 :goto_0

    .line 360
    :cond_a
    iget v0, p0, Lcom/netease/dwrg/ImagePicker;->m_crop_mode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    .line 362
    invoke-virtual {p0, p1}, Lcom/netease/dwrg/ImagePicker;->getImage(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 363
    .local v12, "cropped_img":Landroid/graphics/Bitmap;
    if-nez v12, :cond_b

    .line 365
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/netease/dwrg/ImagePicker;->fail(I)V

    goto/16 :goto_0

    .line 370
    :cond_b
    iget v0, p0, Lcom/netease/dwrg/ImagePicker;->m_crop_aspect_width:I

    if-lez v0, :cond_d

    iget v0, p0, Lcom/netease/dwrg/ImagePicker;->m_crop_aspect_height:I

    if-lez v0, :cond_d

    .line 371
    iget v11, p0, Lcom/netease/dwrg/ImagePicker;->m_ori_img_width:I

    .line 372
    .local v11, "crop_width":I
    iget v0, p0, Lcom/netease/dwrg/ImagePicker;->m_crop_aspect_height:I

    mul-int/2addr v0, v11

    iget v1, p0, Lcom/netease/dwrg/ImagePicker;->m_crop_aspect_width:I

    div-int v10, v0, v1

    .line 373
    .local v10, "crop_height":I
    iget v0, p0, Lcom/netease/dwrg/ImagePicker;->m_ori_img_height:I

    if-le v10, v0, :cond_c

    .line 374
    iget v10, p0, Lcom/netease/dwrg/ImagePicker;->m_ori_img_height:I

    .line 375
    iget v0, p0, Lcom/netease/dwrg/ImagePicker;->m_crop_aspect_width:I

    mul-int/2addr v0, v10

    iget v1, p0, Lcom/netease/dwrg/ImagePicker;->m_crop_aspect_height:I

    div-int v11, v0, v1

    .line 378
    :cond_c
    invoke-direct {p0, v12, v11, v10}, Lcom/netease/dwrg/ImagePicker;->processBitmapCropCenter(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 379
    if-nez v12, :cond_d

    .line 380
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/netease/dwrg/ImagePicker;->fail(I)V

    goto/16 :goto_0

    .line 386
    .end local v10    # "crop_height":I
    .end local v11    # "crop_width":I
    :cond_d
    iget v0, p0, Lcom/netease/dwrg/ImagePicker;->m_cropped_img_save_mode:I

    iget v1, p0, Lcom/netease/dwrg/ImagePicker;->m_cropped_img_max_width:I

    iget v2, p0, Lcom/netease/dwrg/ImagePicker;->m_cropped_img_max_height:I

    invoke-direct {p0, v12, v0, v1, v2}, Lcom/netease/dwrg/ImagePicker;->processImage(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 387
    if-nez v12, :cond_e

    .line 388
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/netease/dwrg/ImagePicker;->fail(I)V

    goto/16 :goto_0

    .line 392
    :cond_e
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/netease/dwrg/ImagePicker;->m_cropped_img_width:I

    .line 393
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/netease/dwrg/ImagePicker;->m_cropped_img_height:I

    .line 394
    iget v0, p0, Lcom/netease/dwrg/ImagePicker;->m_cropped_img_width:I

    if-lez v0, :cond_f

    iget v0, p0, Lcom/netease/dwrg/ImagePicker;->m_cropped_img_height:I

    if-gtz v0, :cond_10

    .line 395
    :cond_f
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/netease/dwrg/ImagePicker;->fail(I)V

    goto/16 :goto_0

    .line 399
    :cond_10
    iget-object v0, p0, Lcom/netease/dwrg/ImagePicker;->m_cropped_img_name:Ljava/lang/String;

    const-string v1, "_cropped"

    invoke-direct {p0, v0, v12, v1}, Lcom/netease/dwrg/ImagePicker;->createImageFile(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/dwrg/ImagePicker;->m_cropped_img_file:Ljava/io/File;

    .line 401
    iget-object v0, p0, Lcom/netease/dwrg/ImagePicker;->m_cropped_img_file:Ljava/io/File;

    invoke-direct {p0, v12, v0}, Lcom/netease/dwrg/ImagePicker;->saveImage(Landroid/graphics/Bitmap;Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 402
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/netease/dwrg/ImagePicker;->fail(I)V

    goto/16 :goto_0

    .line 407
    :cond_11
    const/4 v3, 0x0

    .line 408
    .restart local v3    # "picked_img_path":Ljava/lang/String;
    iget-object v0, p0, Lcom/netease/dwrg/ImagePicker;->m_picked_img_file:Ljava/io/File;

    if-eqz v0, :cond_12

    .line 409
    iget-object v0, p0, Lcom/netease/dwrg/ImagePicker;->m_picked_img_file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 411
    :cond_12
    const/4 v6, 0x0

    .line 412
    .local v6, "cropped_img_path":Ljava/lang/String;
    iget-object v0, p0, Lcom/netease/dwrg/ImagePicker;->m_cropped_img_file:Ljava/io/File;

    if-eqz v0, :cond_13

    .line 413
    iget-object v0, p0, Lcom/netease/dwrg/ImagePicker;->m_cropped_img_file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 415
    :cond_13
    const/4 v0, 0x0

    iget v1, p0, Lcom/netease/dwrg/ImagePicker;->m_ori_img_width:I

    iget v2, p0, Lcom/netease/dwrg/ImagePicker;->m_ori_img_height:I

    iget v4, p0, Lcom/netease/dwrg/ImagePicker;->m_picked_img_width:I

    iget v5, p0, Lcom/netease/dwrg/ImagePicker;->m_picked_img_height:I

    iget v7, p0, Lcom/netease/dwrg/ImagePicker;->m_cropped_img_width:I

    iget v8, p0, Lcom/netease/dwrg/ImagePicker;->m_cropped_img_height:I

    invoke-static/range {v0 .. v8}, Lcom/netease/neox/NativeInterface;->NativeOnPickResult(IIILjava/lang/String;IILjava/lang/String;II)V

    goto/16 :goto_0

    .line 422
    .end local v3    # "picked_img_path":Ljava/lang/String;
    .end local v6    # "cropped_img_path":Ljava/lang/String;
    .end local v12    # "cropped_img":Landroid/graphics/Bitmap;
    :cond_14
    new-instance v9, Lcom/soundcloud/android/crop/Crop;

    invoke-direct {v9, p1}, Lcom/soundcloud/android/crop/Crop;-><init>(Landroid/net/Uri;)V

    .line 423
    .local v9, "crop":Lcom/soundcloud/android/crop/Crop;
    if-nez v9, :cond_15

    .line 424
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/netease/dwrg/ImagePicker;->fail(I)V

    goto/16 :goto_0

    .line 427
    :cond_15
    iget-object v0, p0, Lcom/netease/dwrg/ImagePicker;->m_crop_file:Ljava/io/File;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/soundcloud/android/crop/Crop;->output(Landroid/net/Uri;)Lcom/soundcloud/android/crop/Crop;

    .line 428
    iget v0, p0, Lcom/netease/dwrg/ImagePicker;->m_crop_aspect_width:I

    if-lez v0, :cond_16

    iget v0, p0, Lcom/netease/dwrg/ImagePicker;->m_crop_aspect_height:I

    if-lez v0, :cond_16

    .line 429
    iget v0, p0, Lcom/netease/dwrg/ImagePicker;->m_crop_aspect_width:I

    iget v1, p0, Lcom/netease/dwrg/ImagePicker;->m_crop_aspect_height:I

    invoke-virtual {v9, v0, v1}, Lcom/soundcloud/android/crop/Crop;->withAspect(II)Lcom/soundcloud/android/crop/Crop;

    .line 431
    :cond_16
    iget-object v0, p0, Lcom/netease/dwrg/ImagePicker;->m_activity:Landroid/app/Activity;

    invoke-virtual {v9, v0}, Lcom/soundcloud/android/crop/Crop;->start(Landroid/app/Activity;)V

    goto/16 :goto_0
.end method

.method private saveImage(Landroid/graphics/Bitmap;Ljava/io/File;)Z
    .locals 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "dst_file"    # Ljava/io/File;

    .prologue
    const/4 v2, 0x0

    .line 559
    if-nez p1, :cond_1

    .line 583
    :cond_0
    :goto_0
    return v2

    .line 564
    :cond_1
    const/4 v1, 0x0

    .line 566
    .local v1, "outStream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    .end local v1    # "outStream":Ljava/io/FileOutputStream;
    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 572
    .restart local v1    # "outStream":Ljava/io/FileOutputStream;
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p1, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 577
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 583
    const/4 v2, 0x1

    goto :goto_0

    .line 567
    .end local v1    # "outStream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 568
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 578
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "outStream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 579
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private startCameraActivity()V
    .locals 4

    .prologue
    .line 233
    iget-object v2, p0, Lcom/netease/dwrg/ImagePicker;->m_capture_file:Ljava/io/File;

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 234
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 235
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "output"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 237
    iget-object v2, p0, Lcom/netease/dwrg/ImagePicker;->m_activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 238
    iget-object v2, p0, Lcom/netease/dwrg/ImagePicker;->m_activity:Landroid/app/Activity;

    iget v3, p0, Lcom/netease/dwrg/ImagePicker;->REQUEST_CAPTURE:I

    invoke-virtual {v2, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 243
    :goto_0
    return-void

    .line 241
    :cond_0
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/netease/dwrg/ImagePicker;->fail(I)V

    goto :goto_0
.end method

.method private startPhotoAlbumActivity()V
    .locals 3

    .prologue
    .line 247
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 248
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 250
    iget-object v1, p0, Lcom/netease/dwrg/ImagePicker;->m_activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 251
    iget-object v1, p0, Lcom/netease/dwrg/ImagePicker;->m_activity:Landroid/app/Activity;

    const/16 v2, 0x23ca

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 255
    :goto_0
    return-void

    .line 253
    :cond_0
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/netease/dwrg/ImagePicker;->fail(I)V

    goto :goto_0
.end method


# virtual methods
.method public execute(IILjava/lang/String;IIIIIILjava/lang/String;II)Z
    .locals 5
    .param p1, "pick_mode"    # I
    .param p2, "picked_img_save_mode"    # I
    .param p3, "picked_img_name"    # Ljava/lang/String;
    .param p4, "picked_img_max_width"    # I
    .param p5, "picked_img_max_height"    # I
    .param p6, "crop_mode"    # I
    .param p7, "crop_aspect_width"    # I
    .param p8, "crop_aspect_height"    # I
    .param p9, "cropped_img_save_mode"    # I
    .param p10, "cropped_img_name"    # Ljava/lang/String;
    .param p11, "cropped_img_max_width"    # I
    .param p12, "cropped_img_max_height"    # I

    .prologue
    .line 133
    iput p2, p0, Lcom/netease/dwrg/ImagePicker;->m_picked_img_save_mode:I

    .line 134
    iput-object p3, p0, Lcom/netease/dwrg/ImagePicker;->m_picked_img_name:Ljava/lang/String;

    .line 135
    iput p4, p0, Lcom/netease/dwrg/ImagePicker;->m_picked_img_max_width:I

    .line 136
    iput p5, p0, Lcom/netease/dwrg/ImagePicker;->m_picked_img_max_height:I

    .line 138
    iput p6, p0, Lcom/netease/dwrg/ImagePicker;->m_crop_mode:I

    .line 139
    iput p7, p0, Lcom/netease/dwrg/ImagePicker;->m_crop_aspect_width:I

    .line 140
    iput p8, p0, Lcom/netease/dwrg/ImagePicker;->m_crop_aspect_height:I

    .line 142
    iput p9, p0, Lcom/netease/dwrg/ImagePicker;->m_cropped_img_save_mode:I

    .line 143
    iput-object p10, p0, Lcom/netease/dwrg/ImagePicker;->m_cropped_img_name:Ljava/lang/String;

    .line 144
    move/from16 v0, p11

    iput v0, p0, Lcom/netease/dwrg/ImagePicker;->m_cropped_img_max_width:I

    .line 145
    move/from16 v0, p12

    iput v0, p0, Lcom/netease/dwrg/ImagePicker;->m_cropped_img_max_height:I

    .line 148
    :try_start_0
    iget-object v3, p0, Lcom/netease/dwrg/ImagePicker;->m_capture_file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 149
    iget-object v3, p0, Lcom/netease/dwrg/ImagePicker;->m_capture_file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 151
    :cond_0
    iget-object v3, p0, Lcom/netease/dwrg/ImagePicker;->m_crop_file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 152
    iget-object v3, p0, Lcom/netease/dwrg/ImagePicker;->m_crop_file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :cond_1
    if-nez p1, :cond_2

    .line 160
    iget-object v3, p0, Lcom/netease/dwrg/ImagePicker;->m_activity:Landroid/app/Activity;

    new-instance v4, Lcom/netease/dwrg/ImagePicker$1;

    invoke-direct {v4, p0}, Lcom/netease/dwrg/ImagePicker$1;-><init>(Lcom/netease/dwrg/ImagePicker;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 228
    :goto_0
    const/4 v3, 0x1

    :goto_1
    return v3

    .line 154
    :catch_0
    move-exception v2

    .line 155
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 156
    const/4 v3, 0x0

    goto :goto_1

    .line 169
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v3, 0x1

    if-ne p1, v3, :cond_3

    .line 170
    iget-object v3, p0, Lcom/netease/dwrg/ImagePicker;->m_activity:Landroid/app/Activity;

    new-instance v4, Lcom/netease/dwrg/ImagePicker$2;

    invoke-direct {v4, p0}, Lcom/netease/dwrg/ImagePicker$2;-><init>(Lcom/netease/dwrg/ImagePicker;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 179
    :cond_3
    const/4 v3, 0x2

    if-ne p1, v3, :cond_5

    .line 181
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/netease/dwrg/ImagePicker;->m_activity:Landroid/app/Activity;

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 182
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const v3, 0x7f080032

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 183
    const v3, 0x7f020007

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 184
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 187
    iget-boolean v3, p0, Lcom/netease/dwrg/ImagePicker;->m_support_camera:Z

    if-eqz v3, :cond_4

    .line 188
    const v3, 0x7f080033

    new-instance v4, Lcom/netease/dwrg/ImagePicker$3;

    invoke-direct {v4, p0}, Lcom/netease/dwrg/ImagePicker$3;-><init>(Lcom/netease/dwrg/ImagePicker;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 197
    :cond_4
    const v3, 0x7f080034

    new-instance v4, Lcom/netease/dwrg/ImagePicker$4;

    invoke-direct {v4, p0}, Lcom/netease/dwrg/ImagePicker$4;-><init>(Lcom/netease/dwrg/ImagePicker;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 205
    const v3, 0x7f08000a

    new-instance v4, Lcom/netease/dwrg/ImagePicker$5;

    invoke-direct {v4, p0}, Lcom/netease/dwrg/ImagePicker$5;-><init>(Lcom/netease/dwrg/ImagePicker;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 214
    iget-object v3, p0, Lcom/netease/dwrg/ImagePicker;->m_activity:Landroid/app/Activity;

    new-instance v4, Lcom/netease/dwrg/ImagePicker$6;

    invoke-direct {v4, p0, v1}, Lcom/netease/dwrg/ImagePicker$6;-><init>(Lcom/netease/dwrg/ImagePicker;Landroid/app/AlertDialog$Builder;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 225
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_5
    const/4 v3, 0x0

    goto :goto_1
.end method

.method getImage(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "img_uri"    # Landroid/net/Uri;

    .prologue
    .line 488
    if-nez p1, :cond_0

    .line 489
    const/4 v0, 0x0

    .line 499
    :goto_0
    return-object v0

    .line 492
    :cond_0
    const/4 v0, 0x0

    .line 494
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v2, p0, Lcom/netease/dwrg/ImagePicker;->m_activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 495
    :catch_0
    move-exception v1

    .line 496
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 497
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init()Z
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 89
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/netease/dwrg/ImagePicker;->m_activity:Landroid/app/Activity;

    const-string v7, "neox_config"

    invoke-virtual {v6, v7, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "NeoXRoot"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/Documents/res/picked_image"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/netease/dwrg/ImagePicker;->m_pick_root:Ljava/lang/String;

    .line 92
    const/4 v1, 0x0

    .line 94
    .local v1, "pickrootdir":Ljava/io/File;
    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v5, p0, Lcom/netease/dwrg/ImagePicker;->m_pick_root:Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .end local v1    # "pickrootdir":Ljava/io/File;
    .local v2, "pickrootdir":Ljava/io/File;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 96
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v5

    if-nez v5, :cond_0

    move-object v1, v2

    .line 124
    .end local v2    # "pickrootdir":Ljava/io/File;
    .restart local v1    # "pickrootdir":Ljava/io/File;
    :goto_0
    return v4

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 106
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "pickrootdir":Ljava/io/File;
    .restart local v2    # "pickrootdir":Ljava/io/File;
    :cond_0
    new-instance v3, Ljava/io/File;

    const-string v5, "tmp"

    invoke-direct {v3, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 108
    .local v3, "picktmpdir":Ljava/io/File;
    :try_start_2
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 109
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v5

    if-nez v5, :cond_1

    move-object v1, v2

    .line 110
    .end local v2    # "pickrootdir":Ljava/io/File;
    .restart local v1    # "pickrootdir":Ljava/io/File;
    goto :goto_0

    .line 113
    .end local v1    # "pickrootdir":Ljava/io/File;
    .restart local v2    # "pickrootdir":Ljava/io/File;
    :catch_1
    move-exception v0

    .line 114
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v2

    .line 115
    .end local v2    # "pickrootdir":Ljava/io/File;
    .restart local v1    # "pickrootdir":Ljava/io/File;
    goto :goto_0

    .line 118
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "pickrootdir":Ljava/io/File;
    .restart local v2    # "pickrootdir":Ljava/io/File;
    :cond_1
    new-instance v4, Ljava/io/File;

    const-string v5, "neox_capture_tmp.jpg"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/netease/dwrg/ImagePicker;->m_capture_file:Ljava/io/File;

    .line 119
    new-instance v4, Ljava/io/File;

    const-string v5, "neox_crop_tmp.jpg"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/netease/dwrg/ImagePicker;->m_crop_file:Ljava/io/File;

    .line 121
    iget-object v4, p0, Lcom/netease/dwrg/ImagePicker;->m_activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "android.hardware.camera"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/netease/dwrg/ImagePicker;->m_support_camera:Z

    .line 122
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iput v4, p0, Lcom/netease/dwrg/ImagePicker;->REQUEST_CAPTURE:I

    .line 124
    const/4 v4, 0x1

    move-object v1, v2

    .end local v2    # "pickrootdir":Ljava/io/File;
    .restart local v1    # "pickrootdir":Ljava/io/File;
    goto :goto_0

    .line 101
    .end local v1    # "pickrootdir":Ljava/io/File;
    .end local v3    # "picktmpdir":Ljava/io/File;
    .restart local v2    # "pickrootdir":Ljava/io/File;
    :catch_2
    move-exception v0

    move-object v1, v2

    .end local v2    # "pickrootdir":Ljava/io/File;
    .restart local v1    # "pickrootdir":Ljava/io/File;
    goto :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 259
    iget v2, p0, Lcom/netease/dwrg/ImagePicker;->REQUEST_CAPTURE:I

    if-ne p1, v2, :cond_4

    .line 260
    if-ne p2, v3, :cond_2

    .line 261
    iget-object v2, p0, Lcom/netease/dwrg/ImagePicker;->m_capture_file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 263
    iget-object v2, p0, Lcom/netease/dwrg/ImagePicker;->m_capture_file:Ljava/io/File;

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 264
    .local v0, "captured_img_uri":Landroid/net/Uri;
    invoke-direct {p0, v0}, Lcom/netease/dwrg/ImagePicker;->processPickedImage(Landroid/net/Uri;)V

    .line 296
    .end local v0    # "captured_img_uri":Landroid/net/Uri;
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    invoke-direct {p0, v5}, Lcom/netease/dwrg/ImagePicker;->fail(I)V

    goto :goto_0

    .line 268
    :cond_2
    if-nez p2, :cond_3

    .line 269
    invoke-direct {p0, v4}, Lcom/netease/dwrg/ImagePicker;->fail(I)V

    goto :goto_0

    .line 271
    :cond_3
    invoke-direct {p0, v5}, Lcom/netease/dwrg/ImagePicker;->fail(I)V

    goto :goto_0

    .line 273
    :cond_4
    const/16 v2, 0x23ca

    if-ne p1, v2, :cond_7

    .line 274
    if-ne p2, v3, :cond_5

    .line 275
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 276
    .local v1, "img_uri":Landroid/net/Uri;
    invoke-direct {p0, v1}, Lcom/netease/dwrg/ImagePicker;->processPickedImage(Landroid/net/Uri;)V

    goto :goto_0

    .line 277
    .end local v1    # "img_uri":Landroid/net/Uri;
    :cond_5
    if-nez p2, :cond_6

    .line 278
    invoke-direct {p0, v4}, Lcom/netease/dwrg/ImagePicker;->fail(I)V

    goto :goto_0

    .line 280
    :cond_6
    invoke-direct {p0, v5}, Lcom/netease/dwrg/ImagePicker;->fail(I)V

    goto :goto_0

    .line 282
    :cond_7
    const/16 v2, 0x1a35

    if-ne p1, v2, :cond_0

    .line 283
    if-ne p2, v3, :cond_9

    .line 284
    iget-object v2, p0, Lcom/netease/dwrg/ImagePicker;->m_crop_file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 285
    invoke-static {p3}, Lcom/soundcloud/android/crop/Crop;->getOutput(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v1

    .line 286
    .restart local v1    # "img_uri":Landroid/net/Uri;
    invoke-direct {p0, v1}, Lcom/netease/dwrg/ImagePicker;->processCroppedImage(Landroid/net/Uri;)V

    goto :goto_0

    .line 288
    .end local v1    # "img_uri":Landroid/net/Uri;
    :cond_8
    invoke-direct {p0, v6}, Lcom/netease/dwrg/ImagePicker;->fail(I)V

    goto :goto_0

    .line 290
    :cond_9
    if-nez p2, :cond_a

    .line 291
    invoke-direct {p0, v4}, Lcom/netease/dwrg/ImagePicker;->fail(I)V

    goto :goto_0

    .line 293
    :cond_a
    invoke-direct {p0, v6}, Lcom/netease/dwrg/ImagePicker;->fail(I)V

    goto :goto_0
.end method
