.class Lcom/netease/unisdk/gmbridge/view/FloatWindow$2;
.super Ljava/lang/Object;
.source "FloatWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/unisdk/gmbridge/view/FloatWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final MOVEMENT_THRESHOLD_PX:I = 0xa


# instance fields
.field private initialTouchX:F

.field private initialTouchY:F

.field private initialX:I

.field private initialY:I

.field final synthetic this$0:Lcom/netease/unisdk/gmbridge/view/FloatWindow;


# direct methods
.method constructor <init>(Lcom/netease/unisdk/gmbridge/view/FloatWindow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow$2;->this$0:Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v5, 0x41200000    # 10.0f

    const/4 v2, 0x1

    .line 65
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 105
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 67
    :pswitch_0
    iget-object v3, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow$2;->this$0:Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    invoke-static {v3}, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->access$000(Lcom/netease/unisdk/gmbridge/view/FloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v3, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow$2;->initialX:I

    .line 68
    iget-object v3, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow$2;->this$0:Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    invoke-static {v3}, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->access$000(Lcom/netease/unisdk/gmbridge/view/FloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v3, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow$2;->initialY:I

    .line 69
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iput v3, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow$2;->initialTouchX:F

    .line 70
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iput v3, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow$2;->initialTouchY:F

    .line 71
    iget-object v3, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow$2;->this$0:Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    invoke-static {v3}, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->access$200(Lcom/netease/unisdk/gmbridge/view/FloatWindow;)Landroid/widget/ImageView;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow$2;->this$0:Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    invoke-static {v4}, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->access$100(Lcom/netease/unisdk/gmbridge/view/FloatWindow;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 74
    :pswitch_1
    iget-object v3, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow$2;->this$0:Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    invoke-static {v3}, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->access$200(Lcom/netease/unisdk/gmbridge/view/FloatWindow;)Landroid/widget/ImageView;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow$2;->this$0:Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    invoke-static {v4}, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->access$300(Lcom/netease/unisdk/gmbridge/view/FloatWindow;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 76
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iget v4, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow$2;->initialTouchX:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v5

    if-ltz v3, :cond_0

    .line 77
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iget v4, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow$2;->initialTouchY:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v5

    if-gez v3, :cond_1

    .line 78
    :cond_0
    iget-object v3, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow$2;->this$0:Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    invoke-static {v3}, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->access$400(Lcom/netease/unisdk/gmbridge/view/FloatWindow;)V

    .line 81
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow$2;->this$0:Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    invoke-static {v3}, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->access$200(Lcom/netease/unisdk/gmbridge/view/FloatWindow;)Landroid/widget/ImageView;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow$2;->this$0:Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    invoke-static {v4}, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->access$500(Lcom/netease/unisdk/gmbridge/view/FloatWindow;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->removeCallbacks(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_1
    iget-object v3, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow$2;->this$0:Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    invoke-static {v3}, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->access$200(Lcom/netease/unisdk/gmbridge/view/FloatWindow;)Landroid/widget/ImageView;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow$2;->this$0:Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    invoke-static {v4}, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->access$500(Lcom/netease/unisdk/gmbridge/view/FloatWindow;)Ljava/lang/Runnable;

    move-result-object v4

    const-wide/16 v6, 0xbb8

    invoke-virtual {v3, v4, v6, v7}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 87
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iget v4, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow$2;->initialTouchX:F

    sub-float/2addr v3, v4

    float-to-int v0, v3

    .line 88
    .local v0, "diffX":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iget v4, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow$2;->initialTouchY:F

    sub-float/2addr v3, v4

    float-to-int v1, v3

    .line 89
    .local v1, "diffY":I
    iget-object v3, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow$2;->this$0:Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    invoke-static {v3}, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->access$600(Lcom/netease/unisdk/gmbridge/view/FloatWindow;)I

    move-result v3

    const/16 v4, 0x53

    if-ne v3, v4, :cond_2

    .line 90
    iget-object v3, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow$2;->this$0:Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    invoke-static {v3}, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->access$000(Lcom/netease/unisdk/gmbridge/view/FloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v4, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow$2;->initialX:I

    add-int/2addr v4, v0

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 91
    iget-object v3, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow$2;->this$0:Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    invoke-static {v3}, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->access$000(Lcom/netease/unisdk/gmbridge/view/FloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v4, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow$2;->initialY:I

    sub-int/2addr v4, v1

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 102
    :goto_2
    iget-object v3, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow$2;->this$0:Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    invoke-static {v3}, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->access$800(Lcom/netease/unisdk/gmbridge/view/FloatWindow;)Landroid/view/WindowManager;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow$2;->this$0:Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    invoke-static {v4}, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->access$700(Lcom/netease/unisdk/gmbridge/view/FloatWindow;)Landroid/widget/LinearLayout;

    move-result-object v4

    iget-object v5, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow$2;->this$0:Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    invoke-static {v5}, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->access$000(Lcom/netease/unisdk/gmbridge/view/FloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 92
    :cond_2
    iget-object v3, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow$2;->this$0:Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    invoke-static {v3}, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->access$600(Lcom/netease/unisdk/gmbridge/view/FloatWindow;)I

    move-result v3

    const/16 v4, 0x55

    if-ne v3, v4, :cond_3

    .line 93
    iget-object v3, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow$2;->this$0:Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    invoke-static {v3}, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->access$000(Lcom/netease/unisdk/gmbridge/view/FloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v4, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow$2;->initialX:I

    sub-int/2addr v4, v0

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 94
    iget-object v3, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow$2;->this$0:Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    invoke-static {v3}, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->access$000(Lcom/netease/unisdk/gmbridge/view/FloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v4, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow$2;->initialY:I

    sub-int/2addr v4, v1

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_2

    .line 95
    :cond_3
    iget-object v3, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow$2;->this$0:Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    invoke-static {v3}, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->access$600(Lcom/netease/unisdk/gmbridge/view/FloatWindow;)I

    move-result v3

    const/16 v4, 0x35

    if-ne v3, v4, :cond_4

    .line 96
    iget-object v3, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow$2;->this$0:Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    invoke-static {v3}, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->access$000(Lcom/netease/unisdk/gmbridge/view/FloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v4, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow$2;->initialX:I

    sub-int/2addr v4, v0

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 97
    iget-object v3, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow$2;->this$0:Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    invoke-static {v3}, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->access$000(Lcom/netease/unisdk/gmbridge/view/FloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v4, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow$2;->initialY:I

    add-int/2addr v4, v1

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_2

    .line 99
    :cond_4
    iget-object v3, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow$2;->this$0:Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    invoke-static {v3}, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->access$000(Lcom/netease/unisdk/gmbridge/view/FloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v4, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow$2;->initialX:I

    add-int/2addr v4, v0

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 100
    iget-object v3, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow$2;->this$0:Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    invoke-static {v3}, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->access$000(Lcom/netease/unisdk/gmbridge/view/FloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v4, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow$2;->initialY:I

    add-int/2addr v4, v1

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_2

    .line 82
    .end local v0    # "diffX":I
    .end local v1    # "diffY":I
    :catch_0
    move-exception v3

    goto/16 :goto_1

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
