.class public Lgbsdk/android/support/v4/widget/CursorAdapter$MyDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "CursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/android/support/v4/widget/CursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lgbsdk/android/support/v4/widget/CursorAdapter;


# direct methods
.method constructor <init>(Lgbsdk/android/support/v4/widget/CursorAdapter;)V
    .locals 0

    .line 492
    iput-object p1, p0, Lgbsdk/android/support/v4/widget/CursorAdapter$MyDataSetObserver;->this$0:Lgbsdk/android/support/v4/widget/CursorAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .line 497
    iget-object v0, p0, Lgbsdk/android/support/v4/widget/CursorAdapter$MyDataSetObserver;->this$0:Lgbsdk/android/support/v4/widget/CursorAdapter;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lgbsdk/android/support/v4/widget/CursorAdapter;->mDataValid:Z

    .line 498
    iget-object v0, p0, Lgbsdk/android/support/v4/widget/CursorAdapter$MyDataSetObserver;->this$0:Lgbsdk/android/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Lgbsdk/android/support/v4/widget/CursorAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .line 503
    iget-object v0, p0, Lgbsdk/android/support/v4/widget/CursorAdapter$MyDataSetObserver;->this$0:Lgbsdk/android/support/v4/widget/CursorAdapter;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lgbsdk/android/support/v4/widget/CursorAdapter;->mDataValid:Z

    .line 504
    iget-object v0, p0, Lgbsdk/android/support/v4/widget/CursorAdapter$MyDataSetObserver;->this$0:Lgbsdk/android/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Lgbsdk/android/support/v4/widget/CursorAdapter;->notifyDataSetInvalidated()V

    return-void
.end method
