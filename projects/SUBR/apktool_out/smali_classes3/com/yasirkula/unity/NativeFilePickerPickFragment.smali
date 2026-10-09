.class public Lcom/yasirkula/unity/NativeFilePickerPickFragment;
.super Landroid/app/Fragment;
.source "NativeFilePickerPickFragment.java"


# static fields
.field public static final MIMES_ID:Ljava/lang/String; = "NFPP_MIME"

.field private static final PICKER_MODE_DEFAULT:I = 0x0

.field private static final PICKER_MODE_GET_CONTENT:I = 0x1

.field private static final PICKER_MODE_OPEN_DOCUMENT:I = 0x2

.field private static final PICK_FILE_CODE:I = 0x1da6f

.field public static final SAVE_PATH_ID:Ljava/lang/String; = "NFPP_SAVE_PATH"

.field public static final SELECT_MULTIPLE_ID:Ljava/lang/String; = "NFPP_MULTIPLE"

.field public static final TITLE_ID:Ljava/lang/String; = "NFPP_TITLE"

.field public static pickerMode:I = 0x0

.field public static showProgressbar:Z = true

.field public static tryPreserveFilenames:Z = true


# instance fields
.field private final resultReceiver:Lcom/yasirkula/unity/NativeFilePickerResultReceiver;

.field private savePathDirectory:Ljava/lang/String;

.field private savePathFilename:Ljava/lang/String;

.field private selectMultiple:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lcom/yasirkula/unity/NativeFilePickerPickFragment;->resultReceiver:Lcom/yasirkula/unity/NativeFilePickerResultReceiver;

    return-void
.end method

.method public constructor <init>(Lcom/yasirkula/unity/NativeFilePickerResultReceiver;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "resultReceiver"
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/yasirkula/unity/NativeFilePickerPickFragment;->resultReceiver:Lcom/yasirkula/unity/NativeFilePickerResultReceiver;

    return-void
.end method

.method private getCombinedMimeType(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mimes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 141
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, "*/*"

    if-nez v0, :cond_0

    return-object v1

    .line 143
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 144
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_1
    const/4 v0, 0x0

    move-object v4, v0

    const/4 v5, 0x0

    .line 148
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_9

    .line 150
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_8

    .line 151
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_2

    goto :goto_3

    :cond_2
    const/16 v7, 0x2f

    .line 154
    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-lez v7, :cond_8

    .line 155
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v3

    if-ne v7, v8, :cond_3

    goto :goto_3

    .line 158
    :cond_3
    invoke-virtual {v6, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    .line 159
    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    if-nez v0, :cond_4

    move-object v0, v8

    goto :goto_1

    .line 163
    :cond_4
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    return-object v1

    :cond_5
    :goto_1
    if-nez v4, :cond_6

    move-object v4, v6

    goto :goto_2

    .line 168
    :cond_6
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v4, "*"

    :cond_7
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_8
    :goto_3
    return-object v1

    .line 172
    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8
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

    const v0, 0x1da6f

    if-eq p1, v0, :cond_0

    return-void

    .line 183
    :cond_0
    iget-object p1, p0, Lcom/yasirkula/unity/NativeFilePickerPickFragment;->resultReceiver:Lcom/yasirkula/unity/NativeFilePickerResultReceiver;

    if-nez p1, :cond_1

    const-string p1, "Unity"

    const-string p2, "NativeFilePickerPickFragment.resultReceiver became null!"

    .line 184
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_4

    if-nez p3, :cond_2

    goto :goto_0

    .line 194
    :cond_2
    new-instance p1, Lcom/yasirkula/unity/NativeFilePickerPickResultOperation;

    invoke-virtual {p0}, Lcom/yasirkula/unity/NativeFilePickerPickFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/yasirkula/unity/NativeFilePickerPickFragment;->resultReceiver:Lcom/yasirkula/unity/NativeFilePickerResultReceiver;

    iget-boolean v5, p0, Lcom/yasirkula/unity/NativeFilePickerPickFragment;->selectMultiple:Z

    iget-object v6, p0, Lcom/yasirkula/unity/NativeFilePickerPickFragment;->savePathDirectory:Ljava/lang/String;

    iget-object v7, p0, Lcom/yasirkula/unity/NativeFilePickerPickFragment;->savePathFilename:Ljava/lang/String;

    move-object v1, p1

    move-object v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/yasirkula/unity/NativeFilePickerPickResultOperation;-><init>(Landroid/content/Context;Lcom/yasirkula/unity/NativeFilePickerResultReceiver;Landroid/content/Intent;ZLjava/lang/String;Ljava/lang/String;)V

    .line 195
    sget-boolean p2, Lcom/yasirkula/unity/NativeFilePickerPickFragment;->showProgressbar:Z

    if-eqz p2, :cond_3

    .line 196
    new-instance p2, Lcom/yasirkula/unity/NativeFilePickerPickResultFragment;

    invoke-direct {p2, p1}, Lcom/yasirkula/unity/NativeFilePickerPickResultFragment;-><init>(Lcom/yasirkula/unity/NativeFilePickerPickResultOperation;)V

    goto :goto_2

    .line 199
    :cond_3
    invoke-virtual {p1}, Lcom/yasirkula/unity/NativeFilePickerPickResultOperation;->execute()V

    .line 200
    invoke-virtual {p1}, Lcom/yasirkula/unity/NativeFilePickerPickResultOperation;->sendResultToUnity()V

    goto :goto_1

    .line 187
    :cond_4
    :goto_0
    iget-boolean p2, p0, Lcom/yasirkula/unity/NativeFilePickerPickFragment;->selectMultiple:Z

    const-string p3, ""

    if-nez p2, :cond_5

    .line 188
    invoke-interface {p1, p3}, Lcom/yasirkula/unity/NativeFilePickerResultReceiver;->OnFilePicked(Ljava/lang/String;)V

    goto :goto_1

    .line 190
    :cond_5
    invoke-interface {p1, p3}, Lcom/yasirkula/unity/NativeFilePickerResultReceiver;->OnMultipleFilesPicked(Ljava/lang/String;)V

    :goto_1
    const/4 p2, 0x0

    :goto_2
    if-nez p2, :cond_6

    .line 205
    invoke-virtual {p0}, Lcom/yasirkula/unity/NativeFilePickerPickFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_3

    .line 207
    :cond_6
    invoke-virtual {p0}, Lcom/yasirkula/unity/NativeFilePickerPickFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    :goto_3
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 73
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 75
    iget-object p1, p0, Lcom/yasirkula/unity/NativeFilePickerPickFragment;->resultReceiver:Lcom/yasirkula/unity/NativeFilePickerResultReceiver;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const v2, 0x1da6f

    if-nez p1, :cond_0

    .line 76
    invoke-virtual {p0, v2, v1, v0}, Lcom/yasirkula/unity/NativeFilePickerPickFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto/16 :goto_6

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/yasirkula/unity/NativeFilePickerPickFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v3, "NFPP_MIME"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 80
    invoke-virtual {p0}, Lcom/yasirkula/unity/NativeFilePickerPickFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "NFPP_TITLE"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 81
    invoke-virtual {p0}, Lcom/yasirkula/unity/NativeFilePickerPickFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "NFPP_MULTIPLE"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/yasirkula/unity/NativeFilePickerPickFragment;->selectMultiple:Z

    .line 82
    invoke-virtual {p0}, Lcom/yasirkula/unity/NativeFilePickerPickFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "NFPP_SAVE_PATH"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2f

    .line 84
    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    if-ltz v5, :cond_1

    add-int/lit8 v6, v5, 0x1

    .line 85
    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_1
    move-object v6, v4

    :goto_0
    iput-object v6, p0, Lcom/yasirkula/unity/NativeFilePickerPickFragment;->savePathFilename:Ljava/lang/String;

    if-lez v5, :cond_2

    .line 86
    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/yasirkula/unity/NativeFilePickerPickFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    :goto_1
    iput-object v4, p0, Lcom/yasirkula/unity/NativeFilePickerPickFragment;->savePathDirectory:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const-string v5, "android.intent.action.OPEN_DOCUMENT"

    const-string v6, "android.intent.action.GET_CONTENT"

    const/4 v7, 0x1

    if-gt v4, v7, :cond_4

    .line 91
    sget v4, Lcom/yasirkula/unity/NativeFilePickerPickFragment;->pickerMode:I

    const/4 v8, 0x2

    if-ne v4, v8, :cond_3

    .line 94
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_4

    .line 92
    :cond_3
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_4

    .line 98
    :cond_4
    sget v4, Lcom/yasirkula/unity/NativeFilePickerPickFragment;->pickerMode:I

    if-eq v4, v7, :cond_5

    .line 101
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 99
    :cond_5
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 105
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    .line 106
    :goto_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v6, v8, :cond_6

    .line 107
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    aput-object v8, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_6
    const-string v6, "android.intent.extra.MIME_TYPES"

    .line 109
    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    :goto_4
    invoke-direct {p0, p1}, Lcom/yasirkula/unity/NativeFilePickerPickFragment;->getCombinedMimeType(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "android.intent.category.OPENABLE"

    .line 114
    invoke-virtual {v4, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    invoke-virtual {v4, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 117
    iget-boolean p1, p0, Lcom/yasirkula/unity/NativeFilePickerPickFragment;->selectMultiple:Z

    if-eqz p1, :cond_7

    const-string p1, "android.intent.extra.ALLOW_MULTIPLE"

    .line 118
    invoke-virtual {v4, p1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_7
    if-eqz v3, :cond_8

    .line 120
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_8

    const-string p1, "android.intent.extra.TITLE"

    .line 121
    invoke-virtual {v4, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    :cond_8
    :try_start_0
    sget-boolean p1, Lcom/yasirkula/unity/NativeFilePicker;->UseDefaultFilePickerApp:Z

    if-nez p1, :cond_a

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1e

    if-ne p1, v5, :cond_9

    invoke-static {}, Lcom/yasirkula/unity/NativeFilePickerUtils;->IsXiaomiOrMIUI()Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_5

    .line 129
    :cond_9
    invoke-static {v4, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Lcom/yasirkula/unity/NativeFilePickerPickFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_6

    .line 127
    :cond_a
    :goto_5
    invoke-virtual {p0, v4, v2}, Lcom/yasirkula/unity/NativeFilePickerPickFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    .line 133
    :catch_0
    invoke-virtual {p0}, Lcom/yasirkula/unity/NativeFilePickerPickFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const-string v3, "No apps can perform this action."

    invoke-static {p1, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 134
    invoke-virtual {p0, v2, v1, v0}, Lcom/yasirkula/unity/NativeFilePickerPickFragment;->onActivityResult(IILandroid/content/Intent;)V

    :goto_6
    return-void
.end method
