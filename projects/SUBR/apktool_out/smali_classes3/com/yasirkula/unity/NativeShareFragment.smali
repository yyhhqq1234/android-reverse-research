.class public Lcom/yasirkula/unity/NativeShareFragment;
.super Landroid/app/Fragment;
.source "NativeShareFragment.java"


# static fields
.field public static final EMAIL_RECIPIENTS_ID:Ljava/lang/String; = "NS_EMAIL_RECIPIENTS"

.field public static final FILES_ID:Ljava/lang/String; = "NS_FILES"

.field public static final MIMES_ID:Ljava/lang/String; = "NS_MIMES"

.field private static final SHARE_RESULT_CODE:I = 0xbd139

.field public static final SUBJECT_ID:Ljava/lang/String; = "NS_SUBJECT"

.field public static final TARGET_CLASS_ID:Ljava/lang/String; = "NS_TARGET_CLASS"

.field public static final TARGET_PACKAGE_ID:Ljava/lang/String; = "NS_TARGET_PACKAGE"

.field public static final TEXT_ID:Ljava/lang/String; = "NS_TEXT"

.field public static final TITLE_ID:Ljava/lang/String; = "NS_TITLE"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "resultCode",
            "data"
        }
    .end annotation

    const p3, 0xbd139

    if-eq p1, p3, :cond_0

    return-void

    .line 78
    :cond_0
    sget-object p1, Lcom/yasirkula/unity/NativeShare;->shareResultReceiver:Lcom/yasirkula/unity/NativeShareResultReceiver;

    const-string p3, "Unity"

    if-eqz p1, :cond_3

    .line 80
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Reported share result (may not be correct): "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, ""

    if-ne p2, v1, :cond_2

    .line 83
    sget-object p2, Lcom/yasirkula/unity/NativeShare;->shareResultReceiver:Lcom/yasirkula/unity/NativeShareResultReceiver;

    invoke-interface {p2, v0, p1}, Lcom/yasirkula/unity/NativeShareResultReceiver;->OnShareCompleted(ILjava/lang/String;)V

    goto :goto_1

    .line 96
    :cond_2
    sget-object p2, Lcom/yasirkula/unity/NativeShare;->shareResultReceiver:Lcom/yasirkula/unity/NativeShareResultReceiver;

    const/4 p3, 0x2

    invoke-interface {p2, p3, p1}, Lcom/yasirkula/unity/NativeShareResultReceiver;->OnShareCompleted(ILjava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string p1, "NativeShareResultReceiver was null!"

    .line 101
    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :goto_1
    invoke-virtual {p0}, Lcom/yasirkula/unity/NativeShareFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 39
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 41
    sget-object p1, Lcom/yasirkula/unity/NativeShare;->shareResultReceiver:Lcom/yasirkula/unity/NativeShareResultReceiver;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const v2, 0xbd139

    if-nez p1, :cond_0

    .line 42
    invoke-virtual {p0, v2, v1, v0}, Lcom/yasirkula/unity/NativeShareFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 45
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 46
    invoke-virtual {p0}, Lcom/yasirkula/unity/NativeShareFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0}, Lcom/yasirkula/unity/NativeShareFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v3, v4, p1}, Lcom/yasirkula/unity/NativeShare;->CreateIntentFromBundle(Landroid/content/Context;Landroid/os/Bundle;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v3

    .line 47
    invoke-virtual {p0}, Lcom/yasirkula/unity/NativeShareFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "NS_TITLE"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/high16 v5, 0x10000000

    .line 49
    invoke-virtual {v3, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 57
    :try_start_0
    invoke-virtual {p0}, Lcom/yasirkula/unity/NativeShareFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/yasirkula/unity/NativeShareBroadcastListener;->Initialize(Landroid/content/Context;)Landroid/content/IntentSender;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;Landroid/content/IntentSender;)Landroid/content/Intent;

    move-result-object v3

    .line 59
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 60
    invoke-virtual {p0}, Lcom/yasirkula/unity/NativeShareFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {p0}, Lcom/yasirkula/unity/NativeShareFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/high16 v6, 0x10000

    invoke-virtual {v5, v3, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    invoke-static {v4, v5, p1}, Lcom/yasirkula/unity/NativeShare;->GrantURIPermissionsToShareIntentTargets(Landroid/content/Context;Ljava/util/List;Ljava/util/ArrayList;)V

    .line 62
    :cond_1
    invoke-virtual {p0, v3, v2}, Lcom/yasirkula/unity/NativeShareFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 66
    :catch_0
    invoke-virtual {p0}, Lcom/yasirkula/unity/NativeShareFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const-string v3, "No apps can perform this action."

    const/4 v4, 0x1

    invoke-static {p1, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 67
    invoke-virtual {p0, v2, v1, v0}, Lcom/yasirkula/unity/NativeShareFragment;->onActivityResult(IILandroid/content/Intent;)V

    :goto_0
    return-void
.end method
