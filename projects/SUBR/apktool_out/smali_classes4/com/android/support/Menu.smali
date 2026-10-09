.class public Lcom/android/support/Menu;
.super Ljava/lang/Object;
.source "Menu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/support/Menu$100000000;,
        Lcom/android/support/Menu$100000001;,
        Lcom/android/support/Menu$100000002;,
        Lcom/android/support/Menu$100000003;,
        Lcom/android/support/Menu$100000004;,
        Lcom/android/support/Menu$100000005;,
        Lcom/android/support/Menu$100000006;,
        Lcom/android/support/Menu$100000007;,
        Lcom/android/support/Menu$100000008;,
        Lcom/android/support/Menu$100000009;,
        Lcom/android/support/Menu$100000010;,
        Lcom/android/support/Menu$100000011;,
        Lcom/android/support/Menu$100000015;,
        Lcom/android/support/Menu$100000019;,
        Lcom/android/support/Menu$100000023;,
        Lcom/android/support/Menu$100000024;,
        Lcom/android/support/Menu$100000025;,
        Lcom/android/support/Menu$100000026;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "Mod_Menu"


# instance fields
.field BTN_COLOR:I

.field BtnOFF:I

.field BtnON:I

.field CategoryBG:I

.field CheckBoxColor:I

.field CollapseColor:I

.field ICON_ALPHA:F

.field ICON_SIZE:I

.field LST_MAB:I

.field MENU_BG_COLOR:I

.field MENU_CORNER:F

.field MENU_FEATURE_BG_COLOR:I

.field MENU_HEIGHT:I

.field MENU_WIDTH:I

.field NumberTxtColor:Ljava/lang/String;

.field POS_X:I

.field POS_Y:I

.field RadioColor:I

.field SET:F

.field SeekBarColor:I

.field SeekBarProgressColor:I

.field TEXT_COLOR:I

.field TEXT_COLOR_2:I

.field ToggleOFF:I

.field ToggleON:I

.field closeBtn:Landroid/widget/Button;

.field getContext:Landroid/content/Context;

.field hideBtn:Landroid/widget/Button;

.field mCollapse:Landroid/widget/LinearLayout;

.field mCollapsed:Landroid/widget/RelativeLayout;

.field mExpanded:Landroid/widget/LinearLayout;

.field mRootContainer:Landroid/widget/RelativeLayout;

.field mSettings:Landroid/widget/LinearLayout;

.field mWindowManager:Landroid/view/WindowManager;

.field mods:Landroid/widget/LinearLayout;

.field overlayRequired:Z

.field rootFrame:Landroid/widget/FrameLayout;

.field scrlLL:Landroid/widget/LinearLayout$LayoutParams;

.field scrlLLExpanded:Landroid/widget/LinearLayout$LayoutParams;

.field scrollView:Landroid/widget/ScrollView;

.field startimage:Landroid/widget/ImageView;

.field stopChecking:Z

.field vmParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 35

    .prologue
    .line 164
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v18, v2

    invoke-direct/range {v18 .. v18}, Ljava/lang/Object;-><init>()V

    move-object/from16 v18, v2

    const-string v19, "#FF00FF00"

    invoke-static/range {v19 .. v19}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/support/Menu;->TEXT_COLOR:I

    move-object/from16 v18, v2

    const-string v19, "#FFFFFF"

    invoke-static/range {v19 .. v19}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/support/Menu;->TEXT_COLOR_2:I

    move-object/from16 v18, v2

    const-string v19, "#04000000"

    invoke-static/range {v19 .. v19}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/support/Menu;->BTN_COLOR:I

    move-object/from16 v18, v2

    const-string v19, "#A9000000"

    invoke-static/range {v19 .. v19}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/support/Menu;->MENU_BG_COLOR:I

    move-object/from16 v18, v2

    const-string v19, "#43000000"

    invoke-static/range {v19 .. v19}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/support/Menu;->MENU_FEATURE_BG_COLOR:I

    move-object/from16 v18, v2

    const/16 v19, 0xfa

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/support/Menu;->MENU_WIDTH:I

    move-object/from16 v18, v2

    const/16 v19, 0xfa

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/support/Menu;->MENU_HEIGHT:I

    move-object/from16 v18, v2

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/support/Menu;->POS_X:I

    move-object/from16 v18, v2

    const/16 v19, 0x64

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/support/Menu;->POS_Y:I

    move-object/from16 v18, v2

    const/high16 v19, 0x40c00000    # 6.0f

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/support/Menu;->MENU_CORNER:F

    move-object/from16 v18, v2

    const/high16 v19, 0x41900000    # 18.0f

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/support/Menu;->SET:F

    move-object/from16 v18, v2

    const/16 v19, 0x2d

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/support/Menu;->ICON_SIZE:I

    move-object/from16 v18, v2

    const v19, 0x3f333333    # 0.7f

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/support/Menu;->ICON_ALPHA:F

    move-object/from16 v18, v2

    const v19, -0xff0100

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/support/Menu;->ToggleON:I

    move-object/from16 v18, v2

    const/high16 v19, -0x10000

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/support/Menu;->ToggleOFF:I

    move-object/from16 v18, v2

    const-string v19, "#1b5e20"

    invoke-static/range {v19 .. v19}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/support/Menu;->BtnON:I

    move-object/from16 v18, v2

    const-string v19, "#7f0000"

    invoke-static/range {v19 .. v19}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/support/Menu;->BtnOFF:I

    move-object/from16 v18, v2

    const-string v19, "#FF267719"

    invoke-static/range {v19 .. v19}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/support/Menu;->CategoryBG:I

    move-object/from16 v18, v2

    const-string v19, "#FF00FF00"

    invoke-static/range {v19 .. v19}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/support/Menu;->SeekBarColor:I

    move-object/from16 v18, v2

    const-string v19, "#FF00FF00"

    invoke-static/range {v19 .. v19}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/support/Menu;->SeekBarProgressColor:I

    move-object/from16 v18, v2

    const-string v19, "#FF00FF00"

    invoke-static/range {v19 .. v19}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/support/Menu;->CheckBoxColor:I

    move-object/from16 v18, v2

    const-string v19, "#FFFFFF"

    invoke-static/range {v19 .. v19}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/support/Menu;->RadioColor:I

    move-object/from16 v18, v2

    const-string v19, "#232F2C"

    invoke-static/range {v19 .. v19}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/support/Menu;->CollapseColor:I

    move-object/from16 v18, v2

    const-string v19, "#41c300"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/support/Menu;->NumberTxtColor:Ljava/lang/String;

    move-object/from16 v18, v2

    const-string v19, "#A000FF00"

    invoke-static/range {v19 .. v19}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/support/Menu;->LST_MAB:I

    .line 166
    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    .line 167
    move-object/from16 v18, v3

    sput-object v18, Lcom/android/support/Preferences;->context:Landroid/content/Context;

    .line 168
    move-object/from16 v18, v2

    new-instance v19, Landroid/widget/FrameLayout;

    move-object/from16 v34, v19

    move-object/from16 v19, v34

    move-object/from16 v20, v34

    move-object/from16 v21, v3

    invoke-direct/range {v20 .. v21}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/support/Menu;->rootFrame:Landroid/widget/FrameLayout;

    .line 169
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/support/Menu;->rootFrame:Landroid/widget/FrameLayout;

    move-object/from16 v18, v0

    move-object/from16 v19, v2

    invoke-direct/range {v19 .. v19}, Lcom/android/support/Menu;->onTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 170
    move-object/from16 v18, v2

    new-instance v19, Landroid/widget/RelativeLayout;

    move-object/from16 v34, v19

    move-object/from16 v19, v34

    move-object/from16 v20, v34

    move-object/from16 v21, v3

    invoke-direct/range {v20 .. v21}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/support/Menu;->mRootContainer:Landroid/widget/RelativeLayout;

    .line 171
    move-object/from16 v18, v2

    new-instance v19, Landroid/widget/RelativeLayout;

    move-object/from16 v34, v19

    move-object/from16 v19, v34

    move-object/from16 v20, v34

    move-object/from16 v21, v3

    invoke-direct/range {v20 .. v21}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/support/Menu;->mCollapsed:Landroid/widget/RelativeLayout;

    .line 172
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/support/Menu;->mCollapsed:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 173
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/support/Menu;->mCollapsed:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/support/Menu;->ICON_ALPHA:F

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 176
    move-object/from16 v18, v2

    new-instance v19, Landroid/widget/LinearLayout;

    move-object/from16 v34, v19

    move-object/from16 v19, v34

    move-object/from16 v20, v34

    move-object/from16 v21, v3

    invoke-direct/range {v20 .. v21}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/support/Menu;->mExpanded:Landroid/widget/LinearLayout;

    .line 177
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/support/Menu;->mExpanded:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 178
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/support/Menu;->mExpanded:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/support/Menu;->MENU_BG_COLOR:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 179
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/support/Menu;->mExpanded:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 180
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/support/Menu;->mExpanded:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    const/16 v20, 0x8

    const/16 v21, 0x8

    const/16 v22, 0x8

    invoke-virtual/range {v18 .. v22}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 181
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/support/Menu;->mExpanded:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    new-instance v19, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v34, v19

    move-object/from16 v19, v34

    move-object/from16 v20, v34

    move-object/from16 v21, v2

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/support/Menu;->MENU_WIDTH:I

    move/from16 v22, v0

    invoke-direct/range {v21 .. v22}, Lcom/android/support/Menu;->dp(I)I

    move-result v21

    const/16 v22, -0x2

    invoke-direct/range {v20 .. v22}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual/range {v18 .. v19}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 182
    new-instance v18, Landroid/graphics/drawable/GradientDrawable;

    move-object/from16 v34, v18

    move-object/from16 v18, v34

    move-object/from16 v19, v34

    invoke-direct/range {v19 .. v19}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    move-object/from16 v5, v18

    .line 183
    move-object/from16 v18, v5

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/support/Menu;->MENU_CORNER:F

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 184
    move-object/from16 v18, v5

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/support/Menu;->MENU_BG_COLOR:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 185
    move-object/from16 v18, v5

    const/16 v19, 0x3

    const-string v20, "#FF00FF00"

    invoke-static/range {v20 .. v20}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v20

    invoke-virtual/range {v18 .. v20}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 186
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/support/Menu;->mExpanded:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    move-object/from16 v19, v5

    invoke-virtual/range {v18 .. v19}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 189
    move-object/from16 v18, v2

    new-instance v19, Landroid/widget/ImageView;

    move-object/from16 v34, v19

    move-object/from16 v19, v34

    move-object/from16 v20, v34

    move-object/from16 v21, v3

    invoke-direct/range {v20 .. v21}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/support/Menu;->startimage:Landroid/widget/ImageView;

    .line 190
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/support/Menu;->startimage:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    new-instance v19, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v34, v19

    move-object/from16 v19, v34

    move-object/from16 v20, v34

    const/16 v21, -0x2

    const/16 v22, -0x2

    invoke-direct/range {v20 .. v22}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    const/16 v18, 0x1

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/support/Menu;->ICON_SIZE:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v20

    invoke-static/range {v18 .. v20}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v6, v18

    .line 192
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/support/Menu;->startimage:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    move/from16 v19, v6

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 193
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/support/Menu;->startimage:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    move/from16 v19, v6

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 195
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/support/Menu;->startimage:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    sget-object v19, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 196
    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Lcom/android/support/Menu;->Icon()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v18

    move-object/from16 v7, v18

    .line 197
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/support/Menu;->startimage:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v19, v7

    const/16 v20, 0x0

    move-object/from16 v21, v7

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    invoke-static/range {v19 .. v21}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 198
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/support/Menu;->startimage:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    check-cast v18, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v19, v2

    const/16 v20, 0xa

    invoke-direct/range {v19 .. v20}, Lcom/android/support/Menu;->convertDipToPixels(I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 200
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/support/Menu;->startimage:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v19, v2

    invoke-direct/range {v19 .. v19}, Lcom/android/support/Menu;->onTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 201
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/support/Menu;->startimage:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    new-instance v19, Lcom/android/support/Menu$100000000;

    move-object/from16 v34, v19

    move-object/from16 v19, v34

    move-object/from16 v20, v34

    move-object/from16 v21, v2

    invoke-direct/range {v20 .. v21}, Lcom/android/support/Menu$100000000;-><init>(Lcom/android/support/Menu;)V

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    new-instance v18, Landroid/webkit/WebView;

    move-object/from16 v34, v18

    move-object/from16 v18, v34

    move-object/from16 v19, v34

    move-object/from16 v20, v3

    invoke-direct/range {v19 .. v20}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    move-object/from16 v8, v18

    .line 210
    move-object/from16 v18, v8

    new-instance v19, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v34, v19

    move-object/from16 v19, v34

    move-object/from16 v20, v34

    const/16 v21, -0x2

    const/16 v22, -0x2

    invoke-direct/range {v20 .. v22}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual/range {v18 .. v19}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 211
    const/16 v18, 0x1

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/support/Menu;->ICON_SIZE:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v20

    invoke-static/range {v18 .. v20}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v9, v18

    .line 212
    move-object/from16 v18, v8

    invoke-virtual/range {v18 .. v18}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    move/from16 v19, v9

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 213
    move-object/from16 v18, v8

    invoke-virtual/range {v18 .. v18}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    move/from16 v19, v9

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 214
    move-object/from16 v18, v8

    new-instance v19, Ljava/lang/StringBuffer;

    move-object/from16 v34, v19

    move-object/from16 v19, v34

    move-object/from16 v20, v34

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v20, Ljava/lang/StringBuffer;

    move-object/from16 v34, v20

    move-object/from16 v20, v34

    move-object/from16 v21, v34

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v21, Ljava/lang/StringBuffer;

    move-object/from16 v34, v21

    move-object/from16 v21, v34

    move-object/from16 v22, v34

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v22, Ljava/lang/StringBuffer;

    move-object/from16 v34, v22

    move-object/from16 v22, v34

    move-object/from16 v23, v34

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v23, Ljava/lang/StringBuffer;

    move-object/from16 v34, v23

    move-object/from16 v23, v34

    move-object/from16 v24, v34

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v24, Ljava/lang/StringBuffer;

    move-object/from16 v34, v24

    move-object/from16 v24, v34

    move-object/from16 v25, v34

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v25, Ljava/lang/StringBuffer;

    move-object/from16 v34, v25

    move-object/from16 v25, v34

    move-object/from16 v26, v34

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v26, Ljava/lang/StringBuffer;

    move-object/from16 v34, v26

    move-object/from16 v26, v34

    move-object/from16 v27, v34

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v27, Ljava/lang/StringBuffer;

    move-object/from16 v34, v27

    move-object/from16 v27, v34

    move-object/from16 v28, v34

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v28, Ljava/lang/StringBuffer;

    move-object/from16 v34, v28

    move-object/from16 v28, v34

    move-object/from16 v29, v34

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v29, Ljava/lang/StringBuffer;

    move-object/from16 v34, v29

    move-object/from16 v29, v34

    move-object/from16 v30, v34

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuffer;-><init>()V

    const-string v30, "<html>"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v29

    const-string v30, "<head></head>"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v28

    const-string v29, "<body style=\"margin: 0; padding: 0\">"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v27

    const-string v28, "<img src=\""

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v26

    move-object/from16 v27, v2

    invoke-virtual/range {v27 .. v27}, Lcom/android/support/Menu;->IconWebViewData()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v25

    const-string v26, "\" width=\""

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/support/Menu;->ICON_SIZE:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v23

    const-string v24, "\" height=\""

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/support/Menu;->ICON_SIZE:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    const-string v22, "\" >"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    const-string v21, "</body>"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    const-string v20, "</html>"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    const-string v20, "text/html"

    const-string v21, "utf-8"

    invoke-virtual/range {v18 .. v21}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    move-object/from16 v18, v8

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 221
    move-object/from16 v18, v8

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/support/Menu;->ICON_ALPHA:F

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/webkit/WebView;->setAlpha(F)V

    .line 222
    move-object/from16 v18, v8

    invoke-virtual/range {v18 .. v18}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v18

    const/16 v19, 0x2

    invoke-virtual/range {v18 .. v19}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 223
    move-object/from16 v18, v8

    move-object/from16 v19, v2

    invoke-direct/range {v19 .. v19}, Lcom/android/support/Menu;->onTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 260
    new-instance v18, Landroid/widget/RelativeLayout;

    move-object/from16 v34, v18

    move-object/from16 v18, v34

    move-object/from16 v19, v34

    move-object/from16 v20, v3

    invoke-direct/range {v19 .. v20}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v10, v18

    .line 261
    move-object/from16 v18, v10

    const/16 v19, 0xa

    const/16 v20, 0x5

    const/16 v21, 0xa

    const/16 v22, 0x5

    invoke-virtual/range {v18 .. v22}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 262
    move-object/from16 v18, v10

    const/16 v19, 0x10

    invoke-virtual/range {v18 .. v19}, Landroid/widget/RelativeLayout;->setVerticalGravity(I)V

    .line 264
    new-instance v18, Lcom/android/support/TitanicTextView;

    move-object/from16 v34, v18

    move-object/from16 v18, v34

    move-object/from16 v19, v34

    move-object/from16 v20, v3

    invoke-direct/range {v19 .. v20}, Lcom/android/support/TitanicTextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v11, v18

    .line 265
    move-object/from16 v18, v11

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/support/Menu;->TEXT_COLOR:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/android/support/TitanicTextView;->setTextColor(I)V

    .line 266
    move-object/from16 v18, v11

    const/high16 v19, 0x41d80000    # 27.0f

    invoke-virtual/range {v18 .. v19}, Lcom/android/support/TitanicTextView;->setTextSize(F)V

    .line 267
    move-object/from16 v18, v11

    const/16 v19, 0x11

    invoke-virtual/range {v18 .. v19}, Lcom/android/support/TitanicTextView;->setGravity(I)V

    .line 268
    new-instance v18, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v34, v18

    move-object/from16 v18, v34

    move-object/from16 v19, v34

    const/16 v20, -0x2

    const/16 v21, -0x2

    invoke-direct/range {v19 .. v21}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    move-object/from16 v12, v18

    .line 269
    move-object/from16 v18, v12

    const/16 v19, 0xe

    invoke-virtual/range {v18 .. v19}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 270
    move-object/from16 v18, v11

    move-object/from16 v19, v12

    invoke-virtual/range {v18 .. v19}, Lcom/android/support/TitanicTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 271
    new-instance v18, Lcom/android/support/Titanic;

    move-object/from16 v34, v18

    move-object/from16 v18, v34

    move-object/from16 v19, v34

    invoke-direct/range {v19 .. v19}, Lcom/android/support/Titanic;-><init>()V

    move-object/from16 v19, v11

    invoke-virtual/range {v18 .. v19}, Lcom/android/support/Titanic;->start(Lcom/android/support/TitanicTextView;)V

    .line 274
    new-instance v18, Landroid/widget/TextView;

    move-object/from16 v34, v18

    move-object/from16 v18, v34

    move-object/from16 v19, v34

    move-object/from16 v20, v3

    invoke-direct/range {v19 .. v20}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v13, v18

    .line 275
    move-object/from16 v18, v13

    sget-object v19, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 276
    move-object/from16 v18, v13

    const/16 v19, -0x1

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    .line 277
    move-object/from16 v18, v13

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 278
    move-object/from16 v18, v13

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setSelected(Z)V

    .line 279
    move-object/from16 v18, v13

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/support/Menu;->TEXT_COLOR_2:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setTextColor(I)V

    .line 280
    move-object/from16 v18, v13

    const/high16 v19, 0x41400000    # 12.0f

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setTextSize(F)V

    .line 281
    move-object/from16 v18, v13

    const/16 v19, 0x11

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setGravity(I)V

    .line 282
    move-object/from16 v18, v13

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x5

    invoke-virtual/range {v18 .. v22}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 285
    move-object/from16 v18, v2

    new-instance v19, Landroid/widget/ScrollView;

    move-object/from16 v34, v19

    move-object/from16 v19, v34

    move-object/from16 v20, v34

    move-object/from16 v21, v3

    invoke-direct/range {v20 .. v21}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/support/Menu;->scrollView:Landroid/widget/ScrollView;

    .line 287
    move-object/from16 v18, v2

    new-instance v19, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v34, v19

    move-object/from16 v19, v34

    move-object/from16 v20, v34

    const/16 v21, -0x1

    move-object/from16 v22, v2

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/support/Menu;->MENU_HEIGHT:I

    move/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Lcom/android/support/Menu;->dp(I)I

    move-result v22

    invoke-direct/range {v20 .. v22}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/support/Menu;->scrlLL:Landroid/widget/LinearLayout$LayoutParams;

    .line 288
    move-object/from16 v18, v2

    new-instance v19, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v34, v19

    move-object/from16 v19, v34

    move-object/from16 v20, v34

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/support/Menu;->mExpanded:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/support/Menu;->scrlLLExpanded:Landroid/widget/LinearLayout$LayoutParams;

    .line 289
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/support/Menu;->scrlLLExpanded:Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v18, v0

    const/high16 v19, 0x3f800000    # 1.0f

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 290
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/support/Menu;->scrollView:Landroid/widget/ScrollView;

    move-object/from16 v18, v0

    sget-boolean v19, Lcom/android/support/Preferences;->isExpanded:Z

    if-eqz v19, :cond_0

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/support/Menu;->scrlLLExpanded:Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v19, v0

    :goto_0
    invoke-virtual/range {v18 .. v19}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 291
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/support/Menu;->scrollView:Landroid/widget/ScrollView;

    move-object/from16 v18, v0

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/support/Menu;->MENU_FEATURE_BG_COLOR:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ScrollView;->setBackgroundColor(I)V

    .line 292
    move-object/from16 v18, v2

    new-instance v19, Landroid/widget/LinearLayout;

    move-object/from16 v34, v19

    move-object/from16 v19, v34

    move-object/from16 v20, v34

    move-object/from16 v21, v3

    invoke-direct/range {v20 .. v21}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/support/Menu;->mods:Landroid/widget/LinearLayout;

    .line 293
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/support/Menu;->mods:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 296
    new-instance v18, Landroid/widget/RelativeLayout;

    move-object/from16 v34, v18

    move-object/from16 v18, v34

    move-object/from16 v19, v34

    move-object/from16 v20, v3

    invoke-direct/range {v19 .. v20}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v14, v18

    .line 297
    move-object/from16 v18, v14

    const/16 v19, -0x2

    const/16 v20, 0x3

    const/16 v21, -0x2

    const/16 v22, 0x3

    invoke-virtual/range {v18 .. v22}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 298
    move-object/from16 v18, v14

    const/16 v19, 0x11

    invoke-virtual/range {v18 .. v19}, Landroid/widget/RelativeLayout;->setVerticalGravity(I)V

    .line 299
    move-object/from16 v18, v14

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/support/Menu;->MENU_FEATURE_BG_COLOR:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 302
    new-instance v18, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v34, v18

    move-object/from16 v18, v34

    move-object/from16 v19, v34

    const/16 v20, -0x2

    const/16 v21, -0x2

    invoke-direct/range {v19 .. v21}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    move-object/from16 v15, v18

    .line 303
    move-object/from16 v18, v15

    const/16 v19, 0x9

    invoke-virtual/range {v18 .. v19}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 305
    move-object/from16 v18, v2

    new-instance v19, Landroid/widget/Button;

    move-object/from16 v34, v19

    move-object/from16 v19, v34

    move-object/from16 v20, v34

    move-object/from16 v21, v3

    invoke-direct/range {v20 .. v21}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/support/Menu;->hideBtn:Landroid/widget/Button;

    .line 306
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/support/Menu;->hideBtn:Landroid/widget/Button;

    move-object/from16 v18, v0

    move-object/from16 v19, v15

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 307
    move-object/from16 v18, v2

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/support/Menu;->hideBtn:Landroid/widget/Button;

    move-object/from16 v19, v0

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/support/Menu;->BTN_COLOR:I

    move/from16 v20, v0

    const/16 v21, 0x3

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/support/Menu;->LST_MAB:I

    move/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x1e

    const/16 v28, 0x1e

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    invoke-direct/range {v18 .. v32}, Lcom/android/support/Menu;->AddColor(Landroid/view/View;IIIIIIIIIIIII)V

    .line 308
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/support/Menu;->hideBtn:Landroid/widget/Button;

    move-object/from16 v18, v0

    const-string v19, "HIDE"

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 309
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/support/Menu;->hideBtn:Landroid/widget/Button;

    move-object/from16 v18, v0

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/support/Menu;->TEXT_COLOR:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Button;->setTextColor(I)V

    .line 311
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/support/Menu;->hideBtn:Landroid/widget/Button;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    check-cast v19, Landroid/graphics/Typeface;

    const/16 v20, 0x1

    invoke-virtual/range {v18 .. v20}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 312
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/support/Menu;->hideBtn:Landroid/widget/Button;

    move-object/from16 v18, v0

    new-instance v19, Lcom/android/support/Menu$100000001;

    move-object/from16 v34, v19

    move-object/from16 v19, v34

    move-object/from16 v20, v34

    move-object/from16 v21, v2

    invoke-direct/range {v20 .. v21}, Lcom/android/support/Menu$100000001;-><init>(Lcom/android/support/Menu;)V

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/support/Menu;->hideBtn:Landroid/widget/Button;

    move-object/from16 v18, v0

    new-instance v19, Lcom/android/support/Menu$100000002;

    move-object/from16 v34, v19

    move-object/from16 v19, v34

    move-object/from16 v20, v34

    move-object/from16 v21, v2

    invoke-direct/range {v20 .. v21}, Lcom/android/support/Menu$100000002;-><init>(Lcom/android/support/Menu;)V

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 329
    new-instance v18, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v34, v18

    move-object/from16 v18, v34

    move-object/from16 v19, v34

    const/16 v20, -0x2

    const/16 v21, -0x2

    invoke-direct/range {v19 .. v21}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    move-object/from16 v16, v18

    .line 330
    move-object/from16 v18, v16

    const/16 v19, 0xb

    invoke-virtual/range {v18 .. v19}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 332
    move-object/from16 v18, v2

    new-instance v19, Landroid/widget/Button;

    move-object/from16 v34, v19

    move-object/from16 v19, v34

    move-object/from16 v20, v34

    move-object/from16 v21, v3

    invoke-direct/range {v20 .. v21}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/support/Menu;->closeBtn:Landroid/widget/Button;

    .line 333
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/support/Menu;->closeBtn:Landroid/widget/Button;

    move-object/from16 v18, v0

    move-object/from16 v19, v16

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 334
    move-object/from16 v18, v2

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/support/Menu;->closeBtn:Landroid/widget/Button;

    move-object/from16 v19, v0

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/support/Menu;->BTN_COLOR:I

    move/from16 v20, v0

    const/16 v21, 0x3

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/support/Menu;->LST_MAB:I

    move/from16 v24, v0

    const/16 v25, 0x1e

    const/16 v26, 0x1e

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    invoke-direct/range {v18 .. v32}, Lcom/android/support/Menu;->AddColor(Landroid/view/View;IIIIIIIIIIIII)V

    .line 335
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/support/Menu;->closeBtn:Landroid/widget/Button;

    move-object/from16 v18, v0

    const-string v19, "MINIMIZE"

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 336
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/support/Menu;->closeBtn:Landroid/widget/Button;

    move-object/from16 v18, v0

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/support/Menu;->TEXT_COLOR:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Button;->setTextColor(I)V

    .line 338
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/support/Menu;->closeBtn:Landroid/widget/Button;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    check-cast v19, Landroid/graphics/Typeface;

    const/16 v20, 0x1

    invoke-virtual/range {v18 .. v20}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 339
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/support/Menu;->closeBtn:Landroid/widget/Button;

    move-object/from16 v18, v0

    new-instance v19, Lcom/android/support/Menu$100000003;

    move-object/from16 v34, v19

    move-object/from16 v19, v34

    move-object/from16 v20, v34

    move-object/from16 v21, v2

    invoke-direct/range {v20 .. v21}, Lcom/android/support/Menu$100000003;-><init>(Lcom/android/support/Menu;)V

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 348
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/support/Menu;->mRootContainer:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/support/Menu;->mCollapsed:Landroid/widget/RelativeLayout;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 349
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/support/Menu;->mRootContainer:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/support/Menu;->mExpanded:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 350
    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Lcom/android/support/Menu;->IconWebViewData()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_1

    .line 351
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/support/Menu;->mCollapsed:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    move-object/from16 v19, v8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 355
    :goto_1
    move-object/from16 v18, v10

    move-object/from16 v19, v11

    invoke-virtual/range {v18 .. v19}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 357
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/support/Menu;->mExpanded:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    move-object/from16 v19, v10

    invoke-virtual/range {v18 .. v19}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 358
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/support/Menu;->mExpanded:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    move-object/from16 v19, v13

    invoke-virtual/range {v18 .. v19}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 359
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/support/Menu;->scrollView:Landroid/widget/ScrollView;

    move-object/from16 v18, v0

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/support/Menu;->mods:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 360
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/support/Menu;->mExpanded:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/support/Menu;->scrollView:Landroid/widget/ScrollView;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 361
    move-object/from16 v18, v14

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/support/Menu;->hideBtn:Landroid/widget/Button;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 362
    move-object/from16 v18, v14

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/support/Menu;->closeBtn:Landroid/widget/Button;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 363
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/support/Menu;->mExpanded:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    move-object/from16 v19, v14

    invoke-virtual/range {v18 .. v19}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 365
    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v20, v11

    move-object/from16 v21, v13

    invoke-virtual/range {v18 .. v21}, Lcom/android/support/Menu;->Init(Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-void

    .line 290
    :cond_0
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/support/Menu;->scrlLL:Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v19, v0

    goto/16 :goto_0

    .line 353
    :cond_1
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/support/Menu;->mCollapsed:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/support/Menu;->startimage:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1
.end method

.method private AddColor(Landroid/view/View;IIIIIIIIIIIII)V
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "IIIIIIIIIIIII)V"
        }
    .end annotation

    .prologue
    .line 154
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    new-instance v19, Landroid/graphics/drawable/GradientDrawable;

    move-object/from16 v24, v19

    move-object/from16 v19, v24

    move-object/from16 v20, v24

    invoke-direct/range {v20 .. v20}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    move-object/from16 v17, v19

    .line 155
    move-object/from16 v19, v17

    move/from16 v20, v3

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 156
    move-object/from16 v19, v17

    const/16 v20, 0x8

    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v20, v0

    move-object/from16 v24, v20

    move-object/from16 v20, v24

    move-object/from16 v21, v24

    const/16 v22, 0x0

    move/from16 v23, v8

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    aput v23, v21, v22

    move-object/from16 v24, v20

    move-object/from16 v20, v24

    move-object/from16 v21, v24

    const/16 v22, 0x1

    move/from16 v23, v9

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    aput v23, v21, v22

    move-object/from16 v24, v20

    move-object/from16 v20, v24

    move-object/from16 v21, v24

    const/16 v22, 0x2

    move/from16 v23, v10

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    aput v23, v21, v22

    move-object/from16 v24, v20

    move-object/from16 v20, v24

    move-object/from16 v21, v24

    const/16 v22, 0x3

    move/from16 v23, v11

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    aput v23, v21, v22

    move-object/from16 v24, v20

    move-object/from16 v20, v24

    move-object/from16 v21, v24

    const/16 v22, 0x4

    move/from16 v23, v12

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    aput v23, v21, v22

    move-object/from16 v24, v20

    move-object/from16 v20, v24

    move-object/from16 v21, v24

    const/16 v22, 0x5

    move/from16 v23, v13

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    aput v23, v21, v22

    move-object/from16 v24, v20

    move-object/from16 v20, v24

    move-object/from16 v21, v24

    const/16 v22, 0x6

    move/from16 v23, v14

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    aput v23, v21, v22

    move-object/from16 v24, v20

    move-object/from16 v20, v24

    move-object/from16 v21, v24

    const/16 v22, 0x7

    move/from16 v23, v15

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    aput v23, v21, v22

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 157
    move-object/from16 v19, v17

    move/from16 v20, v4

    move/from16 v21, v7

    move/from16 v22, v5

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v23, v6

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    invoke-virtual/range {v19 .. v23}, Landroid/graphics/drawable/GradientDrawable;->setStroke(IIFF)V

    .line 158
    move-object/from16 v19, v2

    move-object/from16 v20, v17

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private Button(Landroid/widget/LinearLayout;ILjava/lang/String;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/LinearLayout;",
            "I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 827
    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    new-instance v8, Landroid/widget/Button;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v0

    iget-object v10, v10, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object v5, v8

    .line 828
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    const/4 v10, -0x1

    const/4 v11, -0x1

    invoke-direct {v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v6, v8

    .line 829
    move-object v8, v6

    const/4 v9, 0x7

    const/4 v10, 0x5

    const/4 v11, 0x7

    const/4 v12, 0x5

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 830
    move-object v8, v5

    move-object v9, v6

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 831
    move-object v8, v5

    move-object v9, v0

    iget v9, v9, Lcom/android/support/Menu;->TEXT_COLOR_2:I

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setTextColor(I)V

    .line 832
    move-object v8, v5

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 833
    move-object v8, v5

    move-object v9, v3

    invoke-static {v9}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 834
    move-object v8, v5

    move-object v9, v0

    iget v9, v9, Lcom/android/support/Menu;->BTN_COLOR:I

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 835
    move-object v8, v5

    move-object v9, v0

    iget v9, v9, Lcom/android/support/Menu;->SET:F

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setTextSize(F)V

    .line 836
    move-object v8, v5

    new-instance v9, Lcom/android/support/Menu$100000008;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v0

    move v12, v2

    move-object v13, v3

    invoke-direct {v10, v11, v12, v13}, Lcom/android/support/Menu$100000008;-><init>(Lcom/android/support/Menu;ILjava/lang/String;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 852
    move-object v8, v1

    move-object v9, v5

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private ButtonLink(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/LinearLayout;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 856
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    new-instance v8, Landroid/widget/Button;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v0

    iget-object v10, v10, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object v5, v8

    .line 857
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const/4 v10, -0x1

    const/4 v11, -0x1

    invoke-direct {v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v6, v8

    .line 858
    move-object v8, v6

    const/4 v9, 0x7

    const/4 v10, 0x5

    const/4 v11, 0x7

    const/4 v12, 0x5

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 859
    move-object v8, v5

    move-object v9, v6

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 860
    move-object v8, v5

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 861
    move-object v8, v5

    move-object v9, v0

    iget v9, v9, Lcom/android/support/Menu;->TEXT_COLOR_2:I

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setTextColor(I)V

    .line 862
    move-object v8, v5

    move-object v9, v2

    invoke-static {v9}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 863
    move-object v8, v5

    move-object v9, v0

    iget v9, v9, Lcom/android/support/Menu;->BTN_COLOR:I

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 864
    move-object v8, v5

    move-object v9, v0

    iget v9, v9, Lcom/android/support/Menu;->SET:F

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setTextSize(F)V

    .line 865
    move-object v8, v5

    new-instance v9, Lcom/android/support/Menu$100000009;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v0

    move-object v12, v3

    invoke-direct {v10, v11, v12}, Lcom/android/support/Menu$100000009;-><init>(Lcom/android/support/Menu;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 873
    move-object v8, v1

    move-object v9, v5

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private ButtonOnOff(Landroid/widget/LinearLayout;ILjava/lang/String;Z)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/LinearLayout;",
            "I",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 877
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    new-instance v12, Landroid/widget/Button;

    move-object/from16 v20, v12

    move-object/from16 v12, v20

    move-object/from16 v13, v20

    move-object v14, v0

    iget-object v14, v14, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v13, v14}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object v6, v12

    .line 878
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v20, v12

    move-object/from16 v12, v20

    move-object/from16 v13, v20

    const/4 v14, -0x1

    const/4 v15, -0x1

    invoke-direct {v13, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v7, v12

    .line 879
    move-object v12, v7

    const/4 v13, 0x7

    const/4 v14, 0x5

    const/4 v15, 0x7

    const/16 v16, 0x5

    invoke-virtual/range {v12 .. v16}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 880
    move-object v12, v6

    move-object v13, v7

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 881
    move-object v12, v6

    move-object v13, v0

    iget v13, v13, Lcom/android/support/Menu;->TEXT_COLOR_2:I

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setTextColor(I)V

    .line 882
    move-object v12, v6

    move-object v13, v0

    iget v13, v13, Lcom/android/support/Menu;->SET:F

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setTextSize(F)V

    .line 883
    move-object v12, v6

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 885
    move-object v12, v3

    const-string v13, "OnOff_"

    const-string v14, ""

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    move-object v8, v12

    .line 886
    move-object v12, v3

    move v13, v2

    move v14, v4

    invoke-static {v12, v13, v14}, Lcom/android/support/Preferences;->loadPrefBool(Ljava/lang/String;IZ)Z

    move-result v12

    move v9, v12

    .line 887
    move v12, v9

    if-eqz v12, :cond_0

    .line 888
    move-object v12, v6

    new-instance v13, Ljava/lang/StringBuffer;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    move-object v14, v8

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    const-string v14, ": ON"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 889
    move-object v12, v6

    move-object v13, v0

    iget v13, v13, Lcom/android/support/Menu;->BtnON:I

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 890
    const/4 v12, 0x0

    move v9, v12

    .line 896
    :goto_0
    move v12, v9

    move v10, v12

    .line 897
    move-object v12, v6

    new-instance v13, Lcom/android/support/Menu$100000010;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    move-object v15, v0

    move/from16 v16, v10

    move-object/from16 v17, v8

    move/from16 v18, v2

    move-object/from16 v19, v6

    invoke-direct/range {v14 .. v19}, Lcom/android/support/Menu$100000010;-><init>(Lcom/android/support/Menu;ZLjava/lang/String;ILandroid/widget/Button;)V

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 914
    move-object v12, v1

    move-object v13, v6

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void

    .line 892
    :cond_0
    move-object v12, v6

    new-instance v13, Ljava/lang/StringBuffer;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    move-object v14, v8

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    const-string v14, ": OFF"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 893
    move-object v12, v6

    move-object v13, v0

    iget v13, v13, Lcom/android/support/Menu;->BtnOFF:I

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 894
    const/4 v12, 0x1

    move v9, v12

    goto :goto_0
.end method

.method private Category(Landroid/widget/LinearLayout;Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/LinearLayout;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1314
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v6, Landroid/widget/TextView;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    iget-object v8, v8, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object v4, v6

    .line 1315
    move-object v6, v4

    move-object v7, v0

    iget v7, v7, Lcom/android/support/Menu;->CategoryBG:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 1316
    move-object v6, v4

    move-object v7, v2

    invoke-static {v7}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1317
    move-object v6, v4

    const/16 v7, 0x11

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 1318
    move-object v6, v4

    move-object v7, v0

    iget v7, v7, Lcom/android/support/Menu;->TEXT_COLOR_2:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1319
    move-object v6, v4

    const/4 v7, 0x0

    check-cast v7, Landroid/graphics/Typeface;

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1320
    move-object v6, v4

    const/4 v7, 0x0

    const/4 v8, 0x5

    const/4 v9, 0x0

    const/4 v10, 0x5

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1321
    move-object v6, v1

    move-object v7, v4

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private CheckBox(Landroid/widget/LinearLayout;ILjava/lang/String;Z)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/LinearLayout;",
            "I",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 1202
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    new-instance v8, Landroid/widget/CheckBox;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    move-object v10, v0

    iget-object v10, v10, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    move-object v6, v8

    .line 1203
    move-object v8, v6

    move-object v9, v3

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 1204
    move-object v8, v6

    move-object v9, v0

    iget v9, v9, Lcom/android/support/Menu;->TEXT_COLOR_2:I

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 1205
    move-object v8, v6

    move-object v9, v0

    iget v9, v9, Lcom/android/support/Menu;->SET:F

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setTextSize(F)V

    .line 1206
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-lt v8, v9, :cond_0

    .line 1207
    move-object v8, v6

    move-object v9, v0

    iget v9, v9, Lcom/android/support/Menu;->CheckBoxColor:I

    invoke-static {v9}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 1208
    :cond_0
    move-object v8, v6

    move-object v9, v3

    move v10, v2

    move v11, v4

    invoke-static {v9, v10, v11}, Lcom/android/support/Preferences;->loadPrefBool(Ljava/lang/String;IZ)Z

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1209
    move-object v8, v6

    new-instance v9, Lcom/android/support/Menu$100000024;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v11, v0

    move-object v12, v6

    move-object v13, v3

    move v14, v2

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/android/support/Menu$100000024;-><init>(Lcom/android/support/Menu;Landroid/widget/CheckBox;Ljava/lang/String;I)V

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1219
    move-object v8, v1

    move-object v9, v6

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private Collapse(Landroid/widget/LinearLayout;Ljava/lang/String;Z)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/LinearLayout;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 1262
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v18, v10

    move-object/from16 v10, v18

    move-object/from16 v11, v18

    const/4 v12, -0x1

    const/4 v13, -0x1

    invoke-direct {v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v5, v10

    .line 1263
    move-object v10, v5

    const/4 v11, 0x0

    const/4 v12, 0x5

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1265
    new-instance v10, Landroid/widget/LinearLayout;

    move-object/from16 v18, v10

    move-object/from16 v10, v18

    move-object/from16 v11, v18

    move-object v12, v0

    iget-object v12, v12, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v11, v12}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v6, v10

    .line 1266
    move-object v10, v6

    move-object v11, v5

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1267
    move-object v10, v6

    const/16 v11, 0x10

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setVerticalGravity(I)V

    .line 1268
    move-object v10, v6

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1270
    new-instance v10, Landroid/widget/LinearLayout;

    move-object/from16 v18, v10

    move-object/from16 v10, v18

    move-object/from16 v11, v18

    move-object v12, v0

    iget-object v12, v12, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v11, v12}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v7, v10

    .line 1271
    move-object v10, v7

    const/16 v11, 0x10

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setVerticalGravity(I)V

    .line 1272
    move-object v10, v7

    const/4 v11, 0x0

    const/4 v12, 0x5

    const/4 v13, 0x0

    const/4 v14, 0x5

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1273
    move-object v10, v7

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1274
    move-object v10, v7

    const-string v11, "#222D38"

    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1275
    move-object v10, v7

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1276
    move-object v10, v0

    move-object v11, v7

    iput-object v11, v10, Lcom/android/support/Menu;->mCollapse:Landroid/widget/LinearLayout;

    .line 1278
    new-instance v10, Landroid/widget/TextView;

    move-object/from16 v18, v10

    move-object/from16 v10, v18

    move-object/from16 v11, v18

    move-object v12, v0

    iget-object v12, v12, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v11, v12}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object v8, v10

    .line 1279
    move-object v10, v8

    move-object v11, v0

    iget v11, v11, Lcom/android/support/Menu;->CollapseColor:I

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 1280
    move-object v10, v8

    new-instance v11, Ljava/lang/StringBuffer;

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v12, Ljava/lang/StringBuffer;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    const-string v13, "v "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    move-object v13, v2

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, " v"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1281
    move-object v10, v8

    const/16 v11, 0x11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 1282
    move-object v10, v8

    move-object v11, v0

    iget v11, v11, Lcom/android/support/Menu;->TEXT_COLOR_2:I

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1283
    move-object v10, v8

    const/4 v11, 0x0

    check-cast v11, Landroid/graphics/Typeface;

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1284
    move-object v10, v8

    const/4 v11, 0x0

    const/16 v12, 0x14

    const/4 v13, 0x0

    const/16 v14, 0x14

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1286
    move v10, v3

    if-eqz v10, :cond_0

    .line 1287
    move-object v10, v7

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1288
    move-object v10, v8

    new-instance v11, Ljava/lang/StringBuffer;

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v12, Ljava/lang/StringBuffer;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    const-string v13, "^ "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    move-object v13, v2

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, " ^"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1291
    :cond_0
    move-object v10, v8

    new-instance v11, Lcom/android/support/Menu$100000026;

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    move-object v13, v0

    move v14, v3

    move-object v15, v7

    move-object/from16 v16, v8

    move-object/from16 v17, v2

    invoke-direct/range {v12 .. v17}, Lcom/android/support/Menu$100000026;-><init>(Lcom/android/support/Menu;ZLandroid/widget/LinearLayout;Landroid/widget/TextView;Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1308
    move-object v10, v6

    move-object v11, v8

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1309
    move-object v10, v6

    move-object v11, v7

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1310
    move-object v10, v1

    move-object v11, v6

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private InputLNum(Landroid/widget/LinearLayout;ILjava/lang/String;J)V
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/LinearLayout;",
            "I",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 1042
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-wide/from16 v6, p4

    new-instance v15, Landroid/widget/LinearLayout;

    move-object/from16 v24, v15

    move-object/from16 v15, v24

    move-object/from16 v16, v24

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-direct/range {v16 .. v17}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v9, v15

    .line 1043
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v24, v15

    move-object/from16 v15, v24

    move-object/from16 v16, v24

    const/16 v17, -0x1

    const/16 v18, -0x1

    invoke-direct/range {v16 .. v18}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v10, v15

    .line 1044
    move-object v15, v10

    const/16 v16, 0x7

    const/16 v17, 0x5

    const/16 v18, 0x7

    const/16 v19, 0x5

    invoke-virtual/range {v15 .. v19}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1046
    new-instance v15, Landroid/widget/Button;

    move-object/from16 v24, v15

    move-object/from16 v15, v24

    move-object/from16 v16, v24

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-direct/range {v16 .. v17}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object v11, v15

    .line 1047
    move-object v15, v5

    move/from16 v16, v4

    invoke-static/range {v15 .. v16}, Lcom/android/support/Preferences;->loadPrefLong(Ljava/lang/String;I)J

    move-result-wide v15

    move-wide v12, v15

    .line 1048
    move-object v15, v11

    new-instance v16, Ljava/lang/StringBuffer;

    move-object/from16 v24, v16

    move-object/from16 v16, v24

    move-object/from16 v17, v24

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v17, Ljava/lang/StringBuffer;

    move-object/from16 v24, v17

    move-object/from16 v17, v24

    move-object/from16 v18, v24

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v18, Ljava/lang/StringBuffer;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v19, Ljava/lang/StringBuffer;

    move-object/from16 v24, v19

    move-object/from16 v19, v24

    move-object/from16 v20, v24

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v20, Ljava/lang/StringBuffer;

    move-object/from16 v24, v20

    move-object/from16 v20, v24

    move-object/from16 v21, v24

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v21, v5

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    const-string v21, ": <font color=\'"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/support/Menu;->NumberTxtColor:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    const-string v19, "\'>"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    move-wide/from16 v18, v12

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    const-string v17, "</font>"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1049
    move-object v15, v11

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 1050
    move-object v15, v11

    move-object/from16 v16, v10

    invoke-virtual/range {v15 .. v16}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1051
    move-object v15, v11

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/support/Menu;->BTN_COLOR:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 1052
    move-object v15, v11

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/support/Menu;->TEXT_COLOR_2:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/Button;->setTextColor(I)V

    .line 1053
    move-object v15, v11

    new-instance v16, Lcom/android/support/Menu$100000019;

    move-object/from16 v24, v16

    move-object/from16 v16, v24

    move-object/from16 v17, v24

    move-object/from16 v18, v2

    move-wide/from16 v19, v6

    move-object/from16 v21, v11

    move-object/from16 v22, v5

    move/from16 v23, v4

    invoke-direct/range {v17 .. v23}, Lcom/android/support/Menu$100000019;-><init>(Lcom/android/support/Menu;JLandroid/widget/Button;Ljava/lang/String;I)V

    invoke-virtual/range {v15 .. v16}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1125
    move-object v15, v9

    move-object/from16 v16, v11

    invoke-virtual/range {v15 .. v16}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1126
    move-object v15, v3

    move-object/from16 v16, v9

    invoke-virtual/range {v15 .. v16}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private InputNum(Landroid/widget/LinearLayout;ILjava/lang/String;I)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/LinearLayout;",
            "I",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 955
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    new-instance v12, Landroid/widget/LinearLayout;

    move-object/from16 v20, v12

    move-object/from16 v12, v20

    move-object/from16 v13, v20

    move-object v14, v1

    iget-object v14, v14, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v13, v14}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v7, v12

    .line 956
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v20, v12

    move-object/from16 v12, v20

    move-object/from16 v13, v20

    const/4 v14, -0x1

    const/4 v15, -0x1

    invoke-direct {v13, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v8, v12

    .line 957
    move-object v12, v8

    const/4 v13, 0x7

    const/4 v14, 0x5

    const/4 v15, 0x7

    const/16 v16, 0x5

    invoke-virtual/range {v12 .. v16}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 959
    new-instance v12, Landroid/widget/Button;

    move-object/from16 v20, v12

    move-object/from16 v12, v20

    move-object/from16 v13, v20

    move-object v14, v1

    iget-object v14, v14, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v13, v14}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object v9, v12

    .line 960
    move-object v12, v4

    move v13, v3

    invoke-static {v12, v13}, Lcom/android/support/Preferences;->loadPrefInt(Ljava/lang/String;I)I

    move-result v12

    move v10, v12

    .line 961
    move-object v12, v9

    new-instance v13, Ljava/lang/StringBuffer;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v14, Ljava/lang/StringBuffer;

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v15, Ljava/lang/StringBuffer;

    move-object/from16 v20, v15

    move-object/from16 v15, v20

    move-object/from16 v16, v20

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v16, Ljava/lang/StringBuffer;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v17, Ljava/lang/StringBuffer;

    move-object/from16 v20, v17

    move-object/from16 v17, v20

    move-object/from16 v18, v20

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v18, v4

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    const-string v18, ": <font color=\'"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/support/Menu;->NumberTxtColor:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    const-string v16, "\'>"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    move v15, v10

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    const-string v14, "</font>"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 962
    move-object v12, v9

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 963
    move-object v12, v9

    move-object v13, v8

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 964
    move-object v12, v9

    move-object v13, v1

    iget v13, v13, Lcom/android/support/Menu;->BTN_COLOR:I

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 965
    move-object v12, v9

    move-object v13, v1

    iget v13, v13, Lcom/android/support/Menu;->TEXT_COLOR_2:I

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setTextColor(I)V

    .line 966
    move-object v12, v9

    new-instance v13, Lcom/android/support/Menu$100000015;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    move-object v15, v1

    move/from16 v16, v5

    move-object/from16 v17, v9

    move-object/from16 v18, v4

    move/from16 v19, v3

    invoke-direct/range {v14 .. v19}, Lcom/android/support/Menu$100000015;-><init>(Lcom/android/support/Menu;ILandroid/widget/Button;Ljava/lang/String;I)V

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1037
    move-object v12, v7

    move-object v13, v9

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1038
    move-object v12, v2

    move-object v13, v7

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private InputText(Landroid/widget/LinearLayout;ILjava/lang/String;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/LinearLayout;",
            "I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1130
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    new-instance v10, Landroid/widget/LinearLayout;

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    move-object v12, v0

    iget-object v12, v12, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v11, v12}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v5, v10

    .line 1131
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    const/4 v12, -0x1

    const/4 v13, -0x1

    invoke-direct {v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v6, v10

    .line 1132
    move-object v10, v6

    const/4 v11, 0x7

    const/4 v12, 0x5

    const/4 v13, 0x7

    const/4 v14, 0x5

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1134
    new-instance v10, Landroid/widget/Button;

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    move-object v12, v0

    iget-object v12, v12, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v11, v12}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object v7, v10

    .line 1136
    move-object v10, v3

    move v11, v2

    invoke-static {v10, v11}, Lcom/android/support/Preferences;->loadPrefString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    move-object v8, v10

    .line 1137
    move-object v10, v7

    new-instance v11, Ljava/lang/StringBuffer;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v12, Ljava/lang/StringBuffer;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v13, Ljava/lang/StringBuffer;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v14, Ljava/lang/StringBuffer;

    move-object/from16 v17, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v17

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v15, Ljava/lang/StringBuffer;

    move-object/from16 v17, v15

    move-object/from16 v15, v17

    move-object/from16 v16, v17

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v16, v3

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    const-string v16, ": <font color=\'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    move-object v15, v0

    iget-object v15, v15, Lcom/android/support/Menu;->NumberTxtColor:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    const-string v14, "\'>"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    move-object v13, v8

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, "</font>"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1139
    move-object v10, v7

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 1140
    move-object v10, v7

    move-object v11, v6

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1141
    move-object v10, v7

    move-object v11, v0

    iget v11, v11, Lcom/android/support/Menu;->BTN_COLOR:I

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 1142
    move-object v10, v7

    move-object v11, v0

    iget v11, v11, Lcom/android/support/Menu;->TEXT_COLOR_2:I

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setTextColor(I)V

    .line 1143
    move-object v10, v7

    new-instance v11, Lcom/android/support/Menu$100000023;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    move-object v13, v0

    move-object v14, v7

    move-object v15, v3

    move/from16 v16, v2

    invoke-direct/range {v12 .. v16}, Lcom/android/support/Menu$100000023;-><init>(Lcom/android/support/Menu;Landroid/widget/Button;Ljava/lang/String;I)V

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1197
    move-object v10, v5

    move-object v11, v7

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1198
    move-object v10, v1

    move-object v11, v5

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private MyToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 137
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    new-instance v8, Landroid/widget/TextView;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v1

    invoke-direct {v9, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object v4, v8

    .line 138
    move-object v8, v4

    move-object v9, v2

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    move-object v8, v4

    const/16 v9, 0x14

    const/16 v10, 0xa

    const/16 v11, 0x14

    const/16 v12, 0xa

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 140
    move-object v8, v4

    move-object v9, v0

    iget v9, v9, Lcom/android/support/Menu;->LST_MAB:I

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 141
    new-instance v8, Landroid/graphics/drawable/GradientDrawable;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    move-object v5, v8

    .line 142
    move-object v8, v5

    move-object v9, v0

    iget v9, v9, Lcom/android/support/Menu;->CategoryBG:I

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 143
    move-object v8, v5

    const/16 v9, 0x8

    new-array v9, v9, [F

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    const/16 v12, 0x1e

    int-to-float v12, v12

    aput v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x1

    const/16 v12, 0x1e

    int-to-float v12, v12

    aput v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x2

    const/4 v12, 0x0

    int-to-float v12, v12

    aput v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x3

    const/4 v12, 0x0

    int-to-float v12, v12

    aput v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x4

    const/16 v12, 0x1e

    int-to-float v12, v12

    aput v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x5

    const/16 v12, 0x1e

    int-to-float v12, v12

    aput v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x6

    const/4 v12, 0x0

    int-to-float v12, v12

    aput v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x7

    const/4 v12, 0x0

    int-to-float v12, v12

    aput v12, v10, v11

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 144
    move-object v8, v5

    const/4 v9, 0x3

    move-object v10, v0

    iget v10, v10, Lcom/android/support/Menu;->LST_MAB:I

    invoke-virtual {v8, v9, v10}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 145
    move-object v8, v4

    move-object v9, v5

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 147
    move-object v8, v1

    const/4 v9, 0x0

    check-cast v9, Ljava/lang/CharSequence;

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    move-object v6, v8

    .line 148
    move-object v8, v6

    move-object v9, v4

    invoke-virtual {v8, v9}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 149
    move-object v8, v6

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private RadioButton(Landroid/widget/LinearLayout;ILjava/lang/String;Ljava/lang/String;)V
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/LinearLayout;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1224
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    new-instance v17, Ljava/util/LinkedList;

    move-object/from16 v26, v17

    move-object/from16 v17, v26

    move-object/from16 v18, v26

    move-object/from16 v19, v6

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v8, v17

    .line 1226
    new-instance v17, Landroid/widget/TextView;

    move-object/from16 v26, v17

    move-object/from16 v17, v26

    move-object/from16 v18, v26

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-direct/range {v18 .. v19}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v9, v17

    .line 1227
    move-object/from16 v17, v9

    new-instance v18, Ljava/lang/StringBuffer;

    move-object/from16 v26, v18

    move-object/from16 v18, v26

    move-object/from16 v19, v26

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v19, v5

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    const-string v19, ":"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1228
    move-object/from16 v17, v9

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/support/Menu;->TEXT_COLOR_2:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1230
    new-instance v17, Landroid/widget/RadioGroup;

    move-object/from16 v26, v17

    move-object/from16 v17, v26

    move-object/from16 v18, v26

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-direct/range {v18 .. v19}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    move-object/from16 v10, v17

    .line 1231
    move-object/from16 v17, v10

    const/16 v18, 0xa

    const/16 v19, 0x5

    const/16 v20, 0xa

    const/16 v21, 0x5

    invoke-virtual/range {v17 .. v21}, Landroid/widget/RadioGroup;->setPadding(IIII)V

    .line 1232
    move-object/from16 v17, v10

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RadioGroup;->setOrientation(I)V

    .line 1233
    move-object/from16 v17, v10

    move-object/from16 v18, v9

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 1235
    const/16 v17, 0x0

    move/from16 v11, v17

    :goto_0
    move/from16 v17, v11

    move-object/from16 v18, v8

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_1

    .line 1253
    move-object/from16 v17, v5

    move/from16 v18, v4

    invoke-static/range {v17 .. v18}, Lcom/android/support/Preferences;->loadPrefInt(Ljava/lang/String;I)I

    move-result v17

    move/from16 v11, v17

    .line 1254
    move/from16 v17, v11

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_0

    .line 1255
    move-object/from16 v17, v9

    new-instance v18, Ljava/lang/StringBuffer;

    move-object/from16 v26, v18

    move-object/from16 v18, v26

    move-object/from16 v19, v26

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v19, Ljava/lang/StringBuffer;

    move-object/from16 v26, v19

    move-object/from16 v19, v26

    move-object/from16 v20, v26

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v20, Ljava/lang/StringBuffer;

    move-object/from16 v26, v20

    move-object/from16 v20, v26

    move-object/from16 v21, v26

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v21, Ljava/lang/StringBuffer;

    move-object/from16 v26, v21

    move-object/from16 v21, v26

    move-object/from16 v22, v26

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v22, v5

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    const-string v22, ": <font color=\'"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/support/Menu;->NumberTxtColor:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    const-string v20, "\'>"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    move-object/from16 v19, v8

    move/from16 v20, v11

    const/16 v21, 0x1

    add-int/lit8 v20, v20, -0x1

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1256
    move-object/from16 v17, v10

    move/from16 v18, v11

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/RadioButton;

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1258
    :cond_0
    move-object/from16 v17, v3

    move-object/from16 v18, v10

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void

    .line 1236
    :cond_1
    new-instance v17, Landroid/widget/RadioButton;

    move-object/from16 v26, v17

    move-object/from16 v17, v26

    move-object/from16 v18, v26

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-direct/range {v18 .. v19}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    move-object/from16 v12, v17

    .line 1237
    move-object/from16 v17, v5

    move-object/from16 v13, v17

    move-object/from16 v17, v8

    move/from16 v18, v11

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v14, v17

    .line 1238
    new-instance v17, Lcom/android/support/Menu$100000025;

    move-object/from16 v26, v17

    move-object/from16 v17, v26

    move-object/from16 v18, v26

    move-object/from16 v19, v2

    move-object/from16 v20, v9

    move-object/from16 v21, v13

    move-object/from16 v22, v14

    move/from16 v23, v4

    move-object/from16 v24, v10

    move-object/from16 v25, v12

    invoke-direct/range {v18 .. v25}, Lcom/android/support/Menu$100000025;-><init>(Lcom/android/support/Menu;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;ILandroid/widget/RadioGroup;Landroid/widget/RadioButton;)V

    move-object/from16 v15, v17

    .line 1244
    sget-object v17, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v18, v8

    move/from16 v19, v11

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1245
    move-object/from16 v17, v12

    move-object/from16 v18, v8

    move/from16 v19, v11

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 1246
    move-object/from16 v17, v12

    const v18, -0x333334

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 1247
    sget v17, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v18, 0x15

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_2

    .line 1248
    move-object/from16 v17, v12

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/support/Menu;->RadioColor:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RadioButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 1249
    :cond_2
    move-object/from16 v17, v12

    move-object/from16 v18, v15

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1250
    move-object/from16 v17, v10

    move-object/from16 v18, v12

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 1235
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0
.end method

.method private SeekBar(Landroid/widget/LinearLayout;ILjava/lang/String;II)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/LinearLayout;",
            "I",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 786
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object v13, v4

    move v14, v3

    invoke-static {v13, v14}, Lcom/android/support/Preferences;->loadPrefInt(Ljava/lang/String;I)I

    move-result v13

    move v8, v13

    .line 787
    new-instance v13, Landroid/widget/LinearLayout;

    move-object/from16 v23, v13

    move-object/from16 v13, v23

    move-object/from16 v14, v23

    move-object v15, v1

    iget-object v15, v15, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v14, v15}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v9, v13

    .line 788
    move-object v13, v9

    const/16 v14, 0xa

    const/4 v15, 0x5

    const/16 v16, 0x0

    const/16 v17, 0x5

    invoke-virtual/range {v13 .. v17}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 789
    move-object v13, v9

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 790
    move-object v13, v9

    const/16 v14, 0x11

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 792
    new-instance v13, Landroid/widget/TextView;

    move-object/from16 v23, v13

    move-object/from16 v13, v23

    move-object/from16 v14, v23

    move-object v15, v1

    iget-object v15, v15, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v14, v15}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object v10, v13

    .line 793
    move-object v13, v10

    new-instance v14, Ljava/lang/StringBuffer;

    move-object/from16 v23, v14

    move-object/from16 v14, v23

    move-object/from16 v15, v23

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v15, Ljava/lang/StringBuffer;

    move-object/from16 v23, v15

    move-object/from16 v15, v23

    move-object/from16 v16, v23

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v16, Ljava/lang/StringBuffer;

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v17, Ljava/lang/StringBuffer;

    move-object/from16 v23, v17

    move-object/from16 v17, v23

    move-object/from16 v18, v23

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v18, v4

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    const-string v18, ": <font color=\'"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/support/Menu;->NumberTxtColor:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    const-string v16, "\'>"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    move v15, v8

    const/16 v16, 0x0

    move/from16 v0, v16

    if-ne v15, v0, :cond_1

    move v15, v5

    :goto_0
    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 794
    move-object v13, v10

    move-object v14, v1

    iget v14, v14, Lcom/android/support/Menu;->TEXT_COLOR_2:I

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 795
    move-object v13, v10

    move-object v14, v1

    iget v14, v14, Lcom/android/support/Menu;->SET:F

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setTextSize(F)V

    .line 798
    new-instance v13, Landroid/widget/SeekBar;

    move-object/from16 v23, v13

    move-object/from16 v13, v23

    move-object/from16 v14, v23

    move-object v15, v1

    iget-object v15, v15, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v14, v15}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    move-object v11, v13

    .line 799
    move-object v13, v11

    const/16 v14, 0x19

    const/16 v15, 0xa

    const/16 v16, 0x23

    const/16 v17, 0xa

    invoke-virtual/range {v13 .. v17}, Landroid/widget/SeekBar;->setPadding(IIII)V

    .line 800
    move-object v13, v11

    move v14, v6

    invoke-virtual {v13, v14}, Landroid/widget/SeekBar;->setMax(I)V

    .line 801
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x1a

    if-lt v13, v14, :cond_0

    .line 802
    move-object v13, v11

    move v14, v5

    invoke-virtual {v13, v14}, Landroid/widget/SeekBar;->setMin(I)V

    .line 803
    :cond_0
    move-object v13, v11

    move v14, v8

    const/4 v15, 0x0

    if-ne v14, v15, :cond_2

    move v14, v5

    :goto_1
    invoke-virtual {v13, v14}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 804
    move-object v13, v11

    invoke-virtual {v13}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    move-object v14, v1

    iget v14, v14, Lcom/android/support/Menu;->SeekBarColor:I

    sget-object v15, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v13, v14, v15}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 805
    move-object v13, v11

    invoke-virtual {v13}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    move-object v14, v1

    iget v14, v14, Lcom/android/support/Menu;->SeekBarProgressColor:I

    sget-object v15, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v13, v14, v15}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 806
    move-object v13, v11

    new-instance v14, Lcom/android/support/Menu$100000007;

    move-object/from16 v23, v14

    move-object/from16 v14, v23

    move-object/from16 v15, v23

    move-object/from16 v16, v1

    move/from16 v17, v5

    move-object/from16 v18, v4

    move/from16 v19, v3

    move-object/from16 v20, v10

    invoke-direct/range {v15 .. v20}, Lcom/android/support/Menu$100000007;-><init>(Lcom/android/support/Menu;ILjava/lang/String;ILandroid/widget/TextView;)V

    invoke-virtual {v13, v14}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 820
    move-object v13, v9

    move-object v14, v10

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 821
    move-object v13, v9

    move-object v14, v11

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 823
    move-object v13, v2

    move-object v14, v9

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void

    .line 793
    :cond_1
    move v15, v8

    goto/16 :goto_0

    .line 803
    :cond_2
    move v14, v8

    goto :goto_1
.end method

.method private Spinner(Landroid/widget/LinearLayout;ILjava/lang/String;Ljava/lang/String;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/LinearLayout;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 918
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const-string v12, "Mod_Menu"

    new-instance v13, Ljava/lang/StringBuffer;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v14, Ljava/lang/StringBuffer;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v15, Ljava/lang/StringBuffer;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v16, Ljava/lang/StringBuffer;

    move-object/from16 v19, v16

    move-object/from16 v16, v19

    move-object/from16 v17, v19

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v17, Ljava/lang/StringBuffer;

    move-object/from16 v19, v17

    move-object/from16 v17, v19

    move-object/from16 v18, v19

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuffer;-><init>()V

    const-string v18, "spinner "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    move/from16 v18, v2

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    move-object/from16 v16, v3

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    move-object v14, v4

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 919
    new-instance v12, Ljava/util/LinkedList;

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    move-object v14, v4

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    move-object v6, v12

    .line 923
    new-instance v12, Landroid/widget/LinearLayout;

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    move-object v14, v0

    iget-object v14, v14, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v13, v14}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v7, v12

    .line 924
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    const/4 v14, -0x1

    const/4 v15, -0x2

    invoke-direct {v13, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v8, v12

    .line 925
    move-object v12, v8

    const/4 v13, 0x7

    const/4 v14, 0x2

    const/4 v15, 0x7

    const/16 v16, 0x2

    invoke-virtual/range {v12 .. v16}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 926
    move-object v12, v7

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 927
    move-object v12, v7

    move-object v13, v0

    iget v13, v13, Lcom/android/support/Menu;->BTN_COLOR:I

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 928
    move-object v12, v7

    move-object v13, v8

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 930
    new-instance v12, Landroid/widget/Spinner;

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    move-object v14, v0

    iget-object v14, v14, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    const/4 v15, 0x1

    invoke-direct {v13, v14, v15}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;I)V

    move-object v9, v12

    .line 931
    move-object v12, v9

    move-object v13, v8

    invoke-virtual {v12, v13}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 932
    move-object v12, v9

    invoke-virtual {v12}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    const/4 v13, 0x1

    sget-object v14, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v12, v13, v14}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 934
    new-instance v12, Landroid/widget/ArrayAdapter;

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    move-object v14, v0

    iget-object v14, v14, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    const v15, 0x1090009

    move-object/from16 v16, v6

    invoke-direct/range {v13 .. v16}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    move-object v10, v12

    .line 935
    move-object v12, v10

    const v13, 0x1090009

    invoke-virtual {v12, v13}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 937
    move-object v12, v9

    move-object v13, v10

    invoke-virtual {v12, v13}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 938
    move-object v12, v9

    move-object v13, v3

    move v14, v2

    invoke-static {v13, v14}, Lcom/android/support/Preferences;->loadPrefInt(Ljava/lang/String;I)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/widget/Spinner;->setSelection(I)V

    .line 939
    move-object v12, v9

    new-instance v13, Lcom/android/support/Menu$100000011;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    move-object v15, v0

    move-object/from16 v16, v9

    move/from16 v17, v2

    invoke-direct/range {v14 .. v17}, Lcom/android/support/Menu$100000011;-><init>(Lcom/android/support/Menu;Landroid/widget/Spinner;I)V

    invoke-virtual {v12, v13}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 950
    move-object v12, v7

    move-object v13, v9

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 951
    move-object v12, v1

    move-object v13, v7

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private Switch(Landroid/widget/LinearLayout;ILjava/lang/String;Z)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/LinearLayout;",
            "I",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 582
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    new-instance v11, Landroid/widget/Switch;

    move-object/from16 v20, v11

    move-object/from16 v11, v20

    move-object/from16 v12, v20

    move-object v13, v1

    iget-object v13, v13, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v12, v13}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    move-object v7, v11

    .line 583
    new-instance v11, Landroid/content/res/ColorStateList;

    move-object/from16 v20, v11

    move-object/from16 v11, v20

    move-object/from16 v12, v20

    const/4 v13, 0x3

    new-array v13, v13, [[I

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x0

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object/from16 v16, v0

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x0

    const v19, -0x101009e

    aput v19, v17, v18

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x1

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object/from16 v16, v0

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    const/16 v18, 0x0

    const v19, 0x10100a0

    aput v19, v17, v18

    aput-object v16, v14, v15

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    const/4 v15, 0x2

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/4 v14, 0x3

    new-array v14, v14, [I

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    const/16 v16, 0x0

    const v17, -0xffff01

    aput v17, v15, v16

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    const/16 v16, 0x1

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/support/Menu;->ToggleON:I

    move/from16 v17, v0

    aput v17, v15, v16

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    const/16 v16, 0x2

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/support/Menu;->ToggleOFF:I

    move/from16 v17, v0

    aput v17, v15, v16

    invoke-direct {v12, v13, v14}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    move-object v8, v11

    .line 596
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x15

    if-lt v11, v12, :cond_0

    .line 598
    move-object v11, v7

    :try_start_0
    invoke-virtual {v11}, Landroid/widget/Switch;->getThumbDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    move-object v12, v8

    invoke-virtual {v11, v12}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 599
    move-object v11, v7

    invoke-virtual {v11}, Landroid/widget/Switch;->getTrackDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    move-object v12, v8

    invoke-virtual {v11, v12}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 604
    :cond_0
    :goto_0
    move-object v11, v7

    move-object v12, v4

    invoke-virtual {v11, v12}, Landroid/widget/Switch;->setText(Ljava/lang/CharSequence;)V

    .line 605
    move-object v11, v7

    move-object v12, v1

    iget v12, v12, Lcom/android/support/Menu;->TEXT_COLOR_2:I

    invoke-virtual {v11, v12}, Landroid/widget/Switch;->setTextColor(I)V

    .line 606
    move-object v11, v7

    const/16 v12, 0xa

    const/4 v13, 0x5

    const/4 v14, 0x0

    const/4 v15, 0x5

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 607
    move-object v11, v7

    move-object v12, v1

    iget v12, v12, Lcom/android/support/Menu;->SET:F

    invoke-virtual {v11, v12}, Landroid/widget/Switch;->setTextSize(F)V

    .line 608
    move-object v11, v7

    move-object v12, v4

    move v13, v3

    move v14, v5

    invoke-static {v12, v13, v14}, Lcom/android/support/Preferences;->loadPrefBool(Ljava/lang/String;IZ)Z

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/Switch;->setChecked(Z)V

    .line 609
    move-object v11, v7

    new-instance v12, Lcom/android/support/Menu$100000006;

    move-object/from16 v20, v12

    move-object/from16 v12, v20

    move-object/from16 v13, v20

    move-object v14, v1

    move-object v15, v4

    move/from16 v16, v3

    move-object/from16 v17, v7

    invoke-direct/range {v13 .. v17}, Lcom/android/support/Menu$100000006;-><init>(Lcom/android/support/Menu;Ljava/lang/String;ILandroid/widget/Switch;)V

    invoke-virtual {v11, v12}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 782
    move-object v11, v2

    move-object v12, v7

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void

    .line 599
    :catch_0
    move-exception v11

    move-object v9, v11

    .line 601
    const-string v11, "Mod_Menu"

    move-object v12, v9

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    goto :goto_0
.end method

.method private TextView(Landroid/widget/LinearLayout;Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/LinearLayout;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1325
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v6, Landroid/widget/TextView;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    iget-object v8, v8, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object v4, v6

    .line 1326
    move-object v6, v4

    move-object v7, v2

    invoke-static {v7}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1327
    move-object v6, v4

    move-object v7, v0

    iget v7, v7, Lcom/android/support/Menu;->TEXT_COLOR_2:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1328
    move-object v6, v4

    const/16 v7, 0xa

    const/4 v8, 0x5

    const/16 v9, 0xa

    const/4 v10, 0x5

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1329
    move-object v6, v1

    move-object v7, v4

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private WebTextView(Landroid/widget/LinearLayout;Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/LinearLayout;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1333
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v6, Landroid/webkit/WebView;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    iget-object v8, v8, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    move-object v4, v6

    .line 1334
    move-object v6, v4

    move-object v7, v2

    const-string v8, "text/html"

    const-string v9, "utf-8"

    invoke-virtual {v6, v7, v8, v9}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1335
    move-object v6, v4

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 1336
    move-object v6, v4

    const/4 v7, 0x0

    const/4 v8, 0x5

    const/4 v9, 0x0

    const/4 v10, 0x5

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/webkit/WebView;->setPadding(IIII)V

    .line 1337
    move-object v6, v4

    invoke-virtual {v6}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 1338
    move-object v6, v1

    move-object v7, v4

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1000000(Lcom/android/support/Menu;Landroid/content/Context;Ljava/lang/String;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Lcom/android/support/Menu;->MyToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000016(Lcom/android/support/Menu;[Ljava/lang/String;Landroid/widget/LinearLayout;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Lcom/android/support/Menu;->featureList([Ljava/lang/String;Landroid/widget/LinearLayout;)V

    return-void
.end method

.method static synthetic access$1000024(Lcom/android/support/Menu;Landroid/widget/LinearLayout;ILjava/lang/String;)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v6, v0

    move-object v7, v1

    move v8, v2

    move-object v9, v3

    invoke-direct {v6, v7, v8, v9}, Lcom/android/support/Menu;->Button(Landroid/widget/LinearLayout;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000055(Lcom/android/support/Menu;Landroid/widget/LinearLayout;Ljava/lang/String;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Lcom/android/support/Menu;->Category(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000058(Lcom/android/support/Menu;)Z
    .locals 4

    move-object v0, p0

    move-object v3, v0

    invoke-direct {v3}, Lcom/android/support/Menu;->isViewCollapsed()Z

    move-result v3

    move v0, v3

    return v0
.end method

.method private convertDipToPixels(I)I
    .locals 5

    .prologue
    .line 1347
    move-object v0, p0

    move v1, p1

    move v3, v1

    int-to-float v3, v3

    move-object v4, v0

    iget-object v4, v4, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    move v0, v3

    return v0
.end method

.method private dp(I)I
    .locals 6

    .prologue
    .line 1351
    move-object v0, p0

    move v1, p1

    const/4 v3, 0x1

    move v4, v1

    int-to-float v4, v4

    move-object v5, v0

    iget-object v5, v5, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    move v0, v3

    return v0
.end method

.method private featureList([Ljava/lang/String;Landroid/widget/LinearLayout;)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Landroid/widget/LinearLayout;",
            ")V"
        }
    .end annotation

    .prologue
    .line 489
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    const/16 v16, 0x0

    move/from16 v7, v16

    .line 490
    move-object/from16 v16, v4

    move-object/from16 v8, v16

    .line 492
    const/16 v16, 0x0

    move/from16 v9, v16

    :goto_0
    move/from16 v16, v9

    move-object/from16 v17, v3

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_0

    return-void

    .line 493
    :cond_0
    const/16 v16, 0x0

    move/from16 v10, v16

    .line 495
    move-object/from16 v16, v3

    move/from16 v17, v9

    aget-object v16, v16, v17

    move-object/from16 v11, v16

    .line 496
    move-object/from16 v16, v11

    const-string v17, "_True"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 497
    const/16 v16, 0x1

    move/from16 v10, v16

    .line 498
    move-object/from16 v16, v11

    const-string v17, "_True"

    const-string v18, ""

    invoke-virtual/range {v16 .. v18}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v11, v16

    .line 501
    :cond_1
    move-object/from16 v16, v8

    move-object/from16 v4, v16

    .line 502
    move-object/from16 v16, v11

    const-string v17, "CollapseAdd_"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 504
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/support/Menu;->mCollapse:Landroid/widget/LinearLayout;

    move-object/from16 v16, v0

    move-object/from16 v4, v16

    .line 505
    move-object/from16 v16, v11

    const-string v17, "CollapseAdd_"

    const-string v18, ""

    invoke-virtual/range {v16 .. v18}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v11, v16

    .line 507
    :cond_2
    move-object/from16 v16, v11

    const-string v17, "_"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    move-object/from16 v12, v16

    .line 510
    move-object/from16 v16, v12

    const/16 v17, 0x0

    aget-object v16, v16, v17

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_3

    move-object/from16 v16, v12

    const/16 v17, 0x0

    aget-object v16, v16, v17

    const-string v17, "-[0-9]*"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 511
    :cond_3
    move-object/from16 v16, v12

    const/16 v17, 0x0

    aget-object v16, v16, v17

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    move/from16 v6, v16

    .line 512
    move-object/from16 v16, v11

    new-instance v17, Ljava/lang/StringBuffer;

    move-object/from16 v23, v17

    move-object/from16 v17, v23

    move-object/from16 v18, v23

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v18, v12

    const/16 v19, 0x0

    aget-object v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    const-string v18, "_"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    const-string v18, ""

    invoke-virtual/range {v16 .. v18}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v11, v16

    .line 513
    add-int/lit8 v7, v7, 0x1

    .line 518
    :goto_1
    move-object/from16 v16, v11

    const-string v17, "_"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    move-object/from16 v13, v16

    .line 519
    move-object/from16 v16, v13

    const/16 v17, 0x0

    aget-object v16, v16, v17

    move-object/from16 v14, v16

    move-object/from16 v16, v14

    const-string v17, "Toggle"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_6

    .line 521
    move-object/from16 v16, v2

    move-object/from16 v17, v4

    move/from16 v18, v6

    move-object/from16 v19, v13

    const/16 v20, 0x1

    aget-object v19, v19, v20

    move/from16 v20, v10

    invoke-direct/range {v16 .. v20}, Lcom/android/support/Menu;->Switch(Landroid/widget/LinearLayout;ILjava/lang/String;Z)V

    .line 492
    :cond_4
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 516
    :cond_5
    move/from16 v16, v9

    move/from16 v17, v7

    sub-int v16, v16, v17

    move/from16 v6, v16

    goto :goto_1

    .line 522
    :cond_6
    move-object/from16 v16, v14

    const-string v17, "SeekBar"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_7

    .line 524
    move-object/from16 v16, v2

    move-object/from16 v17, v4

    move/from16 v18, v6

    move-object/from16 v19, v13

    const/16 v20, 0x1

    aget-object v19, v19, v20

    move-object/from16 v20, v13

    const/16 v21, 0x2

    aget-object v20, v20, v21

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move-object/from16 v21, v13

    const/16 v22, 0x3

    aget-object v21, v21, v22

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    invoke-direct/range {v16 .. v21}, Lcom/android/support/Menu;->SeekBar(Landroid/widget/LinearLayout;ILjava/lang/String;II)V

    .line 525
    goto :goto_2

    :cond_7
    move-object/from16 v16, v14

    const-string v17, "Button"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_8

    .line 527
    move-object/from16 v16, v2

    move-object/from16 v17, v4

    move/from16 v18, v6

    move-object/from16 v19, v13

    const/16 v20, 0x1

    aget-object v19, v19, v20

    invoke-direct/range {v16 .. v19}, Lcom/android/support/Menu;->Button(Landroid/widget/LinearLayout;ILjava/lang/String;)V

    .line 528
    goto :goto_2

    :cond_8
    move-object/from16 v16, v14

    const-string v17, "ButtonOnOff"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_9

    .line 530
    move-object/from16 v16, v2

    move-object/from16 v17, v4

    move/from16 v18, v6

    move-object/from16 v19, v13

    const/16 v20, 0x1

    aget-object v19, v19, v20

    move/from16 v20, v10

    invoke-direct/range {v16 .. v20}, Lcom/android/support/Menu;->ButtonOnOff(Landroid/widget/LinearLayout;ILjava/lang/String;Z)V

    .line 531
    goto/16 :goto_2

    :cond_9
    move-object/from16 v16, v14

    const-string v17, "Spinner"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_a

    .line 533
    move-object/from16 v16, v2

    move-object/from16 v17, v4

    move-object/from16 v18, v13

    const/16 v19, 0x1

    aget-object v18, v18, v19

    invoke-direct/range {v16 .. v18}, Lcom/android/support/Menu;->TextView(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 534
    move-object/from16 v16, v2

    move-object/from16 v17, v4

    move/from16 v18, v6

    move-object/from16 v19, v13

    const/16 v20, 0x1

    aget-object v19, v19, v20

    move-object/from16 v20, v13

    const/16 v21, 0x2

    aget-object v20, v20, v21

    invoke-direct/range {v16 .. v20}, Lcom/android/support/Menu;->Spinner(Landroid/widget/LinearLayout;ILjava/lang/String;Ljava/lang/String;)V

    .line 535
    goto/16 :goto_2

    :cond_a
    move-object/from16 v16, v14

    const-string v17, "InputText"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_b

    .line 537
    move-object/from16 v16, v2

    move-object/from16 v17, v4

    move/from16 v18, v6

    move-object/from16 v19, v13

    const/16 v20, 0x1

    aget-object v19, v19, v20

    invoke-direct/range {v16 .. v19}, Lcom/android/support/Menu;->InputText(Landroid/widget/LinearLayout;ILjava/lang/String;)V

    .line 538
    goto/16 :goto_2

    :cond_b
    move-object/from16 v16, v14

    const-string v17, "InputValue"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_e

    .line 540
    move-object/from16 v16, v13

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_c

    .line 541
    move-object/from16 v16, v2

    move-object/from16 v17, v4

    move/from16 v18, v6

    move-object/from16 v19, v13

    const/16 v20, 0x2

    aget-object v19, v19, v20

    move-object/from16 v20, v13

    const/16 v21, 0x1

    aget-object v20, v20, v21

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    invoke-direct/range {v16 .. v20}, Lcom/android/support/Menu;->InputNum(Landroid/widget/LinearLayout;ILjava/lang/String;I)V

    .line 542
    :cond_c
    move-object/from16 v16, v13

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_d

    .line 543
    move-object/from16 v16, v2

    move-object/from16 v17, v4

    move/from16 v18, v6

    move-object/from16 v19, v13

    const/16 v20, 0x1

    aget-object v19, v19, v20

    const/16 v20, 0x0

    invoke-direct/range {v16 .. v20}, Lcom/android/support/Menu;->InputNum(Landroid/widget/LinearLayout;ILjava/lang/String;I)V

    .line 544
    :cond_d
    goto/16 :goto_2

    :cond_e
    move-object/from16 v16, v14

    const-string v17, "InputLValue"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_11

    .line 546
    move-object/from16 v16, v13

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_f

    .line 547
    move-object/from16 v16, v2

    move-object/from16 v17, v4

    move/from16 v18, v6

    move-object/from16 v19, v13

    const/16 v20, 0x2

    aget-object v19, v19, v20

    move-object/from16 v20, v13

    const/16 v21, 0x1

    aget-object v20, v20, v21

    invoke-static/range {v20 .. v20}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20

    invoke-direct/range {v16 .. v21}, Lcom/android/support/Menu;->InputLNum(Landroid/widget/LinearLayout;ILjava/lang/String;J)V

    .line 548
    :cond_f
    move-object/from16 v16, v13

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_10

    .line 549
    move-object/from16 v16, v2

    move-object/from16 v17, v4

    move/from16 v18, v6

    move-object/from16 v19, v13

    const/16 v20, 0x1

    aget-object v19, v19, v20

    const/16 v20, 0x0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-direct/range {v16 .. v21}, Lcom/android/support/Menu;->InputLNum(Landroid/widget/LinearLayout;ILjava/lang/String;J)V

    .line 550
    :cond_10
    goto/16 :goto_2

    :cond_11
    move-object/from16 v16, v14

    const-string v17, "CheckBox"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_12

    .line 552
    move-object/from16 v16, v2

    move-object/from16 v17, v4

    move/from16 v18, v6

    move-object/from16 v19, v13

    const/16 v20, 0x1

    aget-object v19, v19, v20

    move/from16 v20, v10

    invoke-direct/range {v16 .. v20}, Lcom/android/support/Menu;->CheckBox(Landroid/widget/LinearLayout;ILjava/lang/String;Z)V

    .line 553
    goto/16 :goto_2

    :cond_12
    move-object/from16 v16, v14

    const-string v17, "RadioButton"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_13

    .line 555
    move-object/from16 v16, v2

    move-object/from16 v17, v4

    move/from16 v18, v6

    move-object/from16 v19, v13

    const/16 v20, 0x1

    aget-object v19, v19, v20

    move-object/from16 v20, v13

    const/16 v21, 0x2

    aget-object v20, v20, v21

    invoke-direct/range {v16 .. v20}, Lcom/android/support/Menu;->RadioButton(Landroid/widget/LinearLayout;ILjava/lang/String;Ljava/lang/String;)V

    .line 556
    goto/16 :goto_2

    :cond_13
    move-object/from16 v16, v14

    const-string v17, "Collapse"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_14

    .line 558
    move-object/from16 v16, v2

    move-object/from16 v17, v4

    move-object/from16 v18, v13

    const/16 v19, 0x1

    aget-object v18, v18, v19

    move/from16 v19, v10

    invoke-direct/range {v16 .. v19}, Lcom/android/support/Menu;->Collapse(Landroid/widget/LinearLayout;Ljava/lang/String;Z)V

    .line 559
    add-int/lit8 v7, v7, 0x1

    .line 560
    goto/16 :goto_2

    :cond_14
    move-object/from16 v16, v14

    const-string v17, "ButtonLink"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_15

    .line 562
    add-int/lit8 v7, v7, 0x1

    .line 563
    move-object/from16 v16, v2

    move-object/from16 v17, v4

    move-object/from16 v18, v13

    const/16 v19, 0x1

    aget-object v18, v18, v19

    move-object/from16 v19, v13

    const/16 v20, 0x2

    aget-object v19, v19, v20

    invoke-direct/range {v16 .. v19}, Lcom/android/support/Menu;->ButtonLink(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    goto/16 :goto_2

    :cond_15
    move-object/from16 v16, v14

    const-string v17, "Category"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_16

    .line 566
    add-int/lit8 v7, v7, 0x1

    .line 567
    move-object/from16 v16, v2

    move-object/from16 v17, v4

    move-object/from16 v18, v13

    const/16 v19, 0x1

    aget-object v18, v18, v19

    invoke-direct/range {v16 .. v18}, Lcom/android/support/Menu;->Category(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 568
    goto/16 :goto_2

    :cond_16
    move-object/from16 v16, v14

    const-string v17, "RichTextView"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_17

    .line 570
    add-int/lit8 v7, v7, 0x1

    .line 571
    move-object/from16 v16, v2

    move-object/from16 v17, v4

    move-object/from16 v18, v13

    const/16 v19, 0x1

    aget-object v18, v18, v19

    invoke-direct/range {v16 .. v18}, Lcom/android/support/Menu;->TextView(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 572
    goto/16 :goto_2

    :cond_17
    move-object/from16 v16, v14

    const-string v17, "RichWebView"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_4

    .line 574
    add-int/lit8 v7, v7, 0x1

    .line 575
    move-object/from16 v16, v2

    move-object/from16 v17, v4

    move-object/from16 v18, v13

    const/16 v19, 0x1

    aget-object v18, v18, v19

    invoke-direct/range {v16 .. v18}, Lcom/android/support/Menu;->WebTextView(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 576
    goto/16 :goto_2
.end method

.method private isViewCollapsed()Z
    .locals 4

    .prologue
    .line 1342
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/android/support/Menu;->rootFrame:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/android/support/Menu;->mCollapsed:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v2

    const/4 v3, 0x0

    if-eq v2, v3, :cond_0

    const/4 v2, 0x0

    :goto_0
    move v0, v2

    return v0

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private onTouchListener()Landroid/view/View$OnTouchListener;
    .locals 6

    .prologue
    .line 438
    move-object v0, p0

    new-instance v2, Lcom/android/support/Menu$100000005;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/android/support/Menu$100000005;-><init>(Lcom/android/support/Menu;)V

    move-object v0, v2

    return-object v0
.end method


# virtual methods
.method native GetFeatureList()[Ljava/lang/String;
.end method

.method native Icon()Ljava/lang/String;
.end method

.method native IconWebViewData()Ljava/lang/String;
.end method

.method native Init(Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/widget/TextView;",
            "Landroid/widget/TextView;",
            ")V"
        }
    .end annotation
.end method

.method native IsGameLibLoaded()Z
.end method

.method public SetWindowManagerActivity()V
    .locals 13
    .annotation runtime Landroid/annotation/SuppressLint;
        value = "WrongConstant"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 417
    move-object v0, p0

    move-object v2, v0

    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    move-object v12, v3

    move-object v3, v12

    move-object v4, v12

    const/4 v5, -0x2

    const/4 v6, -0x2

    move-object v7, v0

    iget v7, v7, Lcom/android/support/Menu;->POS_X:I

    move-object v8, v0

    iget v8, v8, Lcom/android/support/Menu;->POS_Y:I

    const/4 v9, 0x2

    const v10, 0x2800108

    const/4 v11, -0x2

    invoke-direct/range {v4 .. v11}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iput-object v3, v2, Lcom/android/support/Menu;->vmParams:Landroid/view/WindowManager$LayoutParams;

    .line 429
    move-object v2, v0

    iget-object v2, v2, Lcom/android/support/Menu;->vmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x33

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 430
    move-object v2, v0

    iget-object v2, v2, Lcom/android/support/Menu;->vmParams:Landroid/view/WindowManager$LayoutParams;

    move-object v3, v0

    iget v3, v3, Lcom/android/support/Menu;->POS_X:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 431
    move-object v2, v0

    iget-object v2, v2, Lcom/android/support/Menu;->vmParams:Landroid/view/WindowManager$LayoutParams;

    move-object v3, v0

    iget v3, v3, Lcom/android/support/Menu;->POS_Y:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 433
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    iput-object v3, v2, Lcom/android/support/Menu;->mWindowManager:Landroid/view/WindowManager;

    .line 434
    move-object v2, v0

    iget-object v2, v2, Lcom/android/support/Menu;->mWindowManager:Landroid/view/WindowManager;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/support/Menu;->rootFrame:Landroid/widget/FrameLayout;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/support/Menu;->vmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public SetWindowManagerWindowService()V
    .locals 14
    .annotation runtime Landroid/annotation/SuppressLint;
        value = "WrongConstant"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 397
    move-object v0, p0

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    if-lt v4, v5, :cond_0

    const/16 v4, 0x7f6

    :goto_0
    move v2, v4

    .line 398
    move-object v4, v0

    new-instance v5, Landroid/view/WindowManager$LayoutParams;

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    const/4 v7, -0x2

    const/4 v8, -0x2

    move v9, v2

    const v10, 0x4000008

    const/4 v11, -0x3

    invoke-direct/range {v6 .. v11}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v5, v4, Lcom/android/support/Menu;->vmParams:Landroid/view/WindowManager$LayoutParams;

    .line 405
    move-object v4, v0

    iget-object v4, v4, Lcom/android/support/Menu;->vmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v5, 0x33

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 406
    move-object v4, v0

    iget-object v4, v4, Lcom/android/support/Menu;->vmParams:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    iget v5, v5, Lcom/android/support/Menu;->POS_X:I

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 407
    move-object v4, v0

    iget-object v4, v4, Lcom/android/support/Menu;->vmParams:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    iget v5, v5, Lcom/android/support/Menu;->POS_Y:I

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 409
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/android/support/Menu;->getContext:Landroid/content/Context;

    const-string v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    iput-object v5, v4, Lcom/android/support/Menu;->mWindowManager:Landroid/view/WindowManager;

    .line 410
    move-object v4, v0

    iget-object v4, v4, Lcom/android/support/Menu;->mWindowManager:Landroid/view/WindowManager;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/support/Menu;->rootFrame:Landroid/widget/FrameLayout;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/support/Menu;->vmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v4, v5, v6}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 412
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/support/Menu;->overlayRequired:Z

    return-void

    .line 397
    :cond_0
    const/16 v4, 0x7d2

    goto :goto_0
.end method

.method native SettingsList()[Ljava/lang/String;
.end method

.method public ShowMenu()V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 369
    move-object v0, p0

    move-object v4, v0

    iget-object v4, v4, Lcom/android/support/Menu;->rootFrame:Landroid/widget/FrameLayout;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/support/Menu;->mRootContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 371
    new-instance v4, Landroid/os/Handler;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    move-object v2, v4

    .line 372
    move-object v4, v2

    new-instance v5, Lcom/android/support/Menu$100000004;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    move-object v8, v2

    invoke-direct {v6, v7, v8}, Lcom/android/support/Menu$100000004;-><init>(Lcom/android/support/Menu;Landroid/os/Handler;)V

    const/16 v6, 0x1f4

    int-to-long v6, v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v4

    return-void
.end method

.method public onDestroy()V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 1361
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/android/support/Menu;->rootFrame:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_0

    .line 1362
    move-object v2, v0

    iget-object v2, v2, Lcom/android/support/Menu;->mWindowManager:Landroid/view/WindowManager;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/support/Menu;->rootFrame:Landroid/widget/FrameLayout;

    invoke-interface {v2, v3}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 1355
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-object v3, v3, Lcom/android/support/Menu;->rootFrame:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_0

    .line 1356
    move-object v3, v0

    iget-object v3, v3, Lcom/android/support/Menu;->rootFrame:Landroid/widget/FrameLayout;

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method
