.class Lcom/android/support/Menu$100000005;
.super Ljava/lang/Object;
.source "Menu.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/support/Menu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000005"
.end annotation


# instance fields
.field final collapsedView:Landroid/view/View;

.field final expandedView:Landroid/view/View;

.field private initialTouchX:F

.field private initialTouchY:F

.field private initialX:I

.field private initialY:I

.field private final this$0:Lcom/android/support/Menu;


# direct methods
.method constructor <init>(Lcom/android/support/Menu;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/android/support/Menu$100000005;->this$0:Lcom/android/support/Menu;

    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/android/support/Menu$100000005;->this$0:Lcom/android/support/Menu;

    iget-object v4, v4, Lcom/android/support/Menu;->mCollapsed:Landroid/widget/RelativeLayout;

    iput-object v4, v3, Lcom/android/support/Menu$100000005;->collapsedView:Landroid/view/View;

    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/android/support/Menu$100000005;->this$0:Lcom/android/support/Menu;

    iget-object v4, v4, Lcom/android/support/Menu;->mExpanded:Landroid/widget/LinearLayout;

    iput-object v4, v3, Lcom/android/support/Menu$100000005;->expandedView:Landroid/view/View;

    return-void
.end method

.method static access$0(Lcom/android/support/Menu$100000005;)Lcom/android/support/Menu;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/android/support/Menu$100000005;->this$0:Lcom/android/support/Menu;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12

    .prologue
    .line 445
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v8, v2

    invoke-virtual {v8}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 481
    const/4 v8, 0x0

    move v0, v8

    :goto_0
    return v0

    .line 447
    :pswitch_0
    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Lcom/android/support/Menu$100000005;->this$0:Lcom/android/support/Menu;

    iget-object v9, v9, Lcom/android/support/Menu;->vmParams:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v9, v8, Lcom/android/support/Menu$100000005;->initialX:I

    .line 448
    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Lcom/android/support/Menu$100000005;->this$0:Lcom/android/support/Menu;

    iget-object v9, v9, Lcom/android/support/Menu;->vmParams:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v9, v8, Lcom/android/support/Menu$100000005;->initialY:I

    .line 449
    move-object v8, v0

    move-object v9, v2

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    iput v9, v8, Lcom/android/support/Menu$100000005;->initialTouchX:F

    .line 450
    move-object v8, v0

    move-object v9, v2

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    iput v9, v8, Lcom/android/support/Menu$100000005;->initialTouchY:F

    .line 451
    const/4 v8, 0x1

    move v0, v8

    goto :goto_0

    .line 453
    :pswitch_1
    move-object v8, v2

    invoke-virtual {v8}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    move-object v9, v0

    iget v9, v9, Lcom/android/support/Menu$100000005;->initialTouchX:F

    sub-float/2addr v8, v9

    float-to-int v8, v8

    move v4, v8

    .line 454
    move-object v8, v2

    invoke-virtual {v8}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    move-object v9, v0

    iget v9, v9, Lcom/android/support/Menu$100000005;->initialTouchY:F

    sub-float/2addr v8, v9

    float-to-int v8, v8

    move v5, v8

    .line 455
    move-object v8, v0

    iget-object v8, v8, Lcom/android/support/Menu$100000005;->this$0:Lcom/android/support/Menu;

    iget-object v8, v8, Lcom/android/support/Menu;->mExpanded:Landroid/widget/LinearLayout;

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 456
    move-object v8, v0

    iget-object v8, v8, Lcom/android/support/Menu$100000005;->this$0:Lcom/android/support/Menu;

    iget-object v8, v8, Lcom/android/support/Menu;->mCollapsed:Landroid/widget/RelativeLayout;

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 459
    move v8, v4

    const/16 v9, 0xa

    if-ge v8, v9, :cond_0

    move v8, v5

    const/16 v9, 0xa

    if-ge v8, v9, :cond_0

    move-object v8, v0

    iget-object v8, v8, Lcom/android/support/Menu$100000005;->this$0:Lcom/android/support/Menu;

    invoke-static {v8}, Lcom/android/support/Menu;->access$1000058(Lcom/android/support/Menu;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 464
    move-object v8, v0

    :try_start_0
    iget-object v8, v8, Lcom/android/support/Menu$100000005;->collapsedView:Landroid/view/View;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 465
    move-object v8, v0

    iget-object v8, v8, Lcom/android/support/Menu$100000005;->expandedView:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 470
    :cond_0
    :goto_1
    const/4 v8, 0x1

    move v0, v8

    goto :goto_0

    .line 465
    :catch_0
    move-exception v8

    move-object v6, v8

    goto :goto_1

    .line 472
    :pswitch_2
    move-object v8, v0

    iget-object v8, v8, Lcom/android/support/Menu$100000005;->this$0:Lcom/android/support/Menu;

    iget-object v8, v8, Lcom/android/support/Menu;->mExpanded:Landroid/widget/LinearLayout;

    const/high16 v9, 0x3f000000    # 0.5f

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 473
    move-object v8, v0

    iget-object v8, v8, Lcom/android/support/Menu$100000005;->this$0:Lcom/android/support/Menu;

    iget-object v8, v8, Lcom/android/support/Menu;->mCollapsed:Landroid/widget/RelativeLayout;

    const/high16 v9, 0x3f000000    # 0.5f

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 475
    move-object v8, v0

    iget-object v8, v8, Lcom/android/support/Menu$100000005;->this$0:Lcom/android/support/Menu;

    iget-object v8, v8, Lcom/android/support/Menu;->vmParams:Landroid/view/WindowManager$LayoutParams;

    move-object v9, v0

    iget v9, v9, Lcom/android/support/Menu$100000005;->initialX:I

    move-object v10, v2

    invoke-virtual {v10}, Landroid/view/MotionEvent;->getRawX()F

    move-result v10

    move-object v11, v0

    iget v11, v11, Lcom/android/support/Menu$100000005;->initialTouchX:F

    sub-float/2addr v10, v11

    float-to-int v10, v10

    add-int/2addr v9, v10

    iput v9, v8, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 476
    move-object v8, v0

    iget-object v8, v8, Lcom/android/support/Menu$100000005;->this$0:Lcom/android/support/Menu;

    iget-object v8, v8, Lcom/android/support/Menu;->vmParams:Landroid/view/WindowManager$LayoutParams;

    move-object v9, v0

    iget v9, v9, Lcom/android/support/Menu$100000005;->initialY:I

    move-object v10, v2

    invoke-virtual {v10}, Landroid/view/MotionEvent;->getRawY()F

    move-result v10

    move-object v11, v0

    iget v11, v11, Lcom/android/support/Menu$100000005;->initialTouchY:F

    sub-float/2addr v10, v11

    float-to-int v10, v10

    add-int/2addr v9, v10

    iput v9, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 478
    move-object v8, v0

    iget-object v8, v8, Lcom/android/support/Menu$100000005;->this$0:Lcom/android/support/Menu;

    iget-object v8, v8, Lcom/android/support/Menu;->mWindowManager:Landroid/view/WindowManager;

    move-object v9, v0

    iget-object v9, v9, Lcom/android/support/Menu$100000005;->this$0:Lcom/android/support/Menu;

    iget-object v9, v9, Lcom/android/support/Menu;->rootFrame:Landroid/widget/FrameLayout;

    move-object v10, v0

    iget-object v10, v10, Lcom/android/support/Menu$100000005;->this$0:Lcom/android/support/Menu;

    iget-object v10, v10, Lcom/android/support/Menu;->vmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v8, v9, v10}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 479
    const/4 v8, 0x1

    move v0, v8

    goto/16 :goto_0

    .line 445
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
