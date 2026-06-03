.class public Lcom/adobe/air/FileChooserStub;
.super Ljava/lang/Object;
.source "FileChooserStub.java"

# interfaces
.implements Lcom/adobe/air/AndroidActivityWrapper$ActivityResultCallback;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private fileChooser:Lcom/adobe/air/AIRExpandableFileChooser;

.field private m_condition:Ljava/util/concurrent/locks/Condition;

.field private m_filenames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_filterList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_isDirectory:Z

.field private m_isSave:Z

.field private m_lock:Ljava/util/concurrent/locks/Lock;

.field private m_userAction:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-class v0, Lcom/adobe/air/FileChooserStub;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adobe/air/FileChooserStub;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 245
    iput-object v0, p0, Lcom/adobe/air/FileChooserStub;->m_filenames:Ljava/util/ArrayList;

    .line 246
    iput-object v0, p0, Lcom/adobe/air/FileChooserStub;->m_userAction:Ljava/lang/String;

    const/4 v0, 0x0

    .line 247
    iput-boolean v0, p0, Lcom/adobe/air/FileChooserStub;->m_isSave:Z

    .line 248
    iput-boolean v0, p0, Lcom/adobe/air/FileChooserStub;->m_isDirectory:Z

    .line 249
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/air/FileChooserStub;->m_filterList:Ljava/util/ArrayList;

    .line 38
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/adobe/air/FileChooserStub;->m_lock:Ljava/util/concurrent/locks/Lock;

    .line 39
    iget-object v0, p0, Lcom/adobe/air/FileChooserStub;->m_lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/FileChooserStub;->m_condition:Ljava/util/concurrent/locks/Condition;

    return-void
.end method

.method static synthetic access$000(Lcom/adobe/air/FileChooserStub;)Lcom/adobe/air/AIRExpandableFileChooser;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/adobe/air/FileChooserStub;->fileChooser:Lcom/adobe/air/AIRExpandableFileChooser;

    return-object p0
.end method

.method static synthetic access$002(Lcom/adobe/air/FileChooserStub;Lcom/adobe/air/AIRExpandableFileChooser;)Lcom/adobe/air/AIRExpandableFileChooser;
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/adobe/air/FileChooserStub;->fileChooser:Lcom/adobe/air/AIRExpandableFileChooser;

    return-object p1
.end method

.method static synthetic access$100(Lcom/adobe/air/FileChooserStub;)Ljava/util/ArrayList;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/adobe/air/FileChooserStub;->m_filterList:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public SetUserAction(Ljava/lang/String;)V
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/adobe/air/FileChooserStub;->m_lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 223
    iput-object p1, p0, Lcom/adobe/air/FileChooserStub;->m_userAction:Ljava/lang/String;

    .line 224
    iget-object p1, p0, Lcom/adobe/air/FileChooserStub;->m_condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 225
    iget-object p1, p0, Lcom/adobe/air/FileChooserStub;->m_lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public addFilter(Ljava/lang/String;)V
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/adobe/air/FileChooserStub;->m_filterList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public chooseDirectory(Ljava/lang/String;)V
    .locals 3

    .line 190
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v0

    .line 191
    invoke-virtual {v0, p0}, Lcom/adobe/air/AndroidActivityWrapper;->addActivityResultListener(Lcom/adobe/air/AndroidActivityWrapper$ActivityResultCallback;)V

    const/4 v1, 0x0

    .line 192
    iput-boolean v1, p0, Lcom/adobe/air/FileChooserStub;->m_isSave:Z

    const/4 v1, 0x1

    .line 193
    iput-boolean v1, p0, Lcom/adobe/air/FileChooserStub;->m_isDirectory:Z

    .line 196
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.OPEN_DOCUMENT_TREE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x41

    .line 197
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/16 v2, 0x42

    .line 198
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "/"

    .line 199
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.provider.extra.INITIAL_URI"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    :cond_0
    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const/4 v0, 0x7

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 201
    iget-object p1, p0, Lcom/adobe/air/FileChooserStub;->m_lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 204
    :try_start_0
    iget-object p1, p0, Lcom/adobe/air/FileChooserStub;->m_userAction:Ljava/lang/String;

    if-nez p1, :cond_1

    .line 205
    iget-object p1, p0, Lcom/adobe/air/FileChooserStub;->m_condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 210
    iget-object v0, p0, Lcom/adobe/air/FileChooserStub;->m_lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 211
    throw p1

    .line 210
    :catch_0
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/adobe/air/FileChooserStub;->m_lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public getFilename(I)Ljava/lang/String;
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/adobe/air/FileChooserStub;->m_filenames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/FileChooserStub;->m_filenames:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getNumFilenames()I
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/adobe/air/FileChooserStub;->m_filenames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    const/4 v0, 0x7

    if-eq v0, p1, :cond_0

    return-void

    .line 99
    :cond_0
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object p1

    .line 100
    invoke-virtual {p1, p0}, Lcom/adobe/air/AndroidActivityWrapper;->removeActivityResultListener(Lcom/adobe/air/AndroidActivityWrapper$ActivityResultCallback;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_6

    if-eqz p3, :cond_6

    .line 103
    invoke-virtual {p1}, Lcom/adobe/air/AndroidActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 104
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/adobe/air/FileChooserStub;->m_filenames:Ljava/util/ArrayList;

    .line 105
    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object p2

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-nez p2, :cond_3

    .line 107
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    .line 108
    iget-object p3, p0, Lcom/adobe/air/FileChooserStub;->m_filenames:Ljava/util/ArrayList;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    iget-boolean p3, p0, Lcom/adobe/air/FileChooserStub;->m_isSave:Z

    if-nez p3, :cond_2

    iget-boolean p3, p0, Lcom/adobe/air/FileChooserStub;->m_isDirectory:Z

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    or-int/lit8 p3, v0, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V

    goto :goto_3

    .line 114
    :cond_3
    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object p2

    const/4 p3, 0x0

    .line 115
    :goto_1
    invoke-virtual {p2}, Landroid/content/ClipData;->getItemCount()I

    move-result v2

    if-ge p3, v2, :cond_5

    .line 117
    invoke-virtual {p2, p3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v2

    .line 118
    iget-object v3, p0, Lcom/adobe/air/FileChooserStub;->m_filenames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    iget-boolean v3, p0, Lcom/adobe/air/FileChooserStub;->m_isSave:Z

    if-eqz v3, :cond_4

    const/4 v3, 0x2

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_2
    or-int/lit8 v3, v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_5
    :goto_3
    const-string p1, "done"

    .line 124
    invoke-virtual {p0, p1}, Lcom/adobe/air/FileChooserStub;->SetUserAction(Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    const-string p1, "cancel"

    .line 128
    invoke-virtual {p0, p1}, Lcom/adobe/air/FileChooserStub;->SetUserAction(Ljava/lang/String;)V

    :goto_4
    return-void
.end method

.method public show(Ljava/lang/String;ZZ)V
    .locals 9

    .line 44
    invoke-static {}, Lcom/harman/services/AIRRuntimeCheck;->shouldUseSAF()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 46
    iput-boolean p2, p0, Lcom/adobe/air/FileChooserStub;->m_isSave:Z

    .line 47
    iput-boolean v1, p0, Lcom/adobe/air/FileChooserStub;->m_isDirectory:Z

    .line 48
    invoke-virtual {p0, p1, p3}, Lcom/adobe/air/FileChooserStub;->showSAF(Ljava/lang/String;Z)V

    return-void

    .line 55
    :cond_0
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_1

    .line 60
    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->WaitForNewActivity()Landroid/app/Activity;

    move-result-object v2

    .line 63
    :cond_1
    new-instance v0, Lcom/adobe/air/FileChooserStub$1;

    move-object v3, v0

    move-object v4, p0

    move v5, p2

    move v6, p3

    move-object v7, p1

    move-object v8, p0

    invoke-direct/range {v3 .. v8}, Lcom/adobe/air/FileChooserStub$1;-><init>(Lcom/adobe/air/FileChooserStub;ZZLjava/lang/String;Lcom/adobe/air/FileChooserStub;)V

    invoke-virtual {v2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 74
    iget-object p1, p0, Lcom/adobe/air/FileChooserStub;->m_lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 77
    :try_start_0
    iget-object p1, p0, Lcom/adobe/air/FileChooserStub;->m_userAction:Ljava/lang/String;

    if-nez p1, :cond_2

    .line 78
    iget-object p1, p0, Lcom/adobe/air/FileChooserStub;->m_condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 83
    iget-object p2, p0, Lcom/adobe/air/FileChooserStub;->m_lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 84
    throw p1

    .line 83
    :catch_0
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/adobe/air/FileChooserStub;->m_lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 86
    iget-object p1, p0, Lcom/adobe/air/FileChooserStub;->fileChooser:Lcom/adobe/air/AIRExpandableFileChooser;

    invoke-virtual {p1}, Lcom/adobe/air/AIRExpandableFileChooser;->GetFileNames()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/adobe/air/FileChooserStub;->m_filenames:Ljava/util/ArrayList;

    .line 88
    iget-object p1, p0, Lcom/adobe/air/FileChooserStub;->m_filenames:Ljava/util/ArrayList;

    if-eqz p1, :cond_3

    .line 89
    :goto_1
    iget-object p1, p0, Lcom/adobe/air/FileChooserStub;->m_filenames:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public showSAF(Ljava/lang/String;Z)V
    .locals 6

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 136
    iget-object v1, p0, Lcom/adobe/air/FileChooserStub;->m_filterList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :cond_0
    :goto_0
    if-lez v1, :cond_1

    .line 137
    iget-object v2, p0, Lcom/adobe/air/FileChooserStub;->m_filterList:Ljava/util/ArrayList;

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "/^\\S+\\/\\S+$"

    .line 138
    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 140
    :cond_1
    iput-object v0, p0, Lcom/adobe/air/FileChooserStub;->m_filterList:Ljava/util/ArrayList;

    .line 143
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v0

    .line 144
    invoke-virtual {v0, p0}, Lcom/adobe/air/AndroidActivityWrapper;->addActivityResultListener(Lcom/adobe/air/AndroidActivityWrapper$ActivityResultCallback;)V

    .line 148
    new-instance v1, Landroid/content/Intent;

    iget-boolean v2, p0, Lcom/adobe/air/FileChooserStub;->m_isSave:Z

    if-eqz v2, :cond_2

    const-string v2, "android.intent.action.CREATE_DOCUMENT"

    goto :goto_1

    :cond_2
    const-string v2, "android.intent.action.OPEN_DOCUMENT"

    :goto_1
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.OPENABLE"

    .line 149
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    iget-boolean v2, p0, Lcom/adobe/air/FileChooserStub;->m_isSave:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    const/4 v2, 0x2

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    or-int/lit8 v2, v2, 0x41

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 151
    iget-boolean v2, p0, Lcom/adobe/air/FileChooserStub;->m_isSave:Z

    const/4 v4, 0x1

    if-eqz v2, :cond_4

    const-string v2, "*/*"

    .line 153
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.TITLE"

    const-string v3, "Please enter the filename"

    .line 154
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    .line 156
    :cond_4
    iget-object v2, p0, Lcom/adobe/air/FileChooserStub;->m_filterList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v4, :cond_5

    .line 158
    iget-object v2, p0, Lcom/adobe/air/FileChooserStub;->m_filterList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    :cond_5
    const-string v2, "*/*"

    .line 162
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    iget-object v2, p0, Lcom/adobe/air/FileChooserStub;->m_filterList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_6

    const-string v2, "android.intent.extra.MIME_TYPES"

    iget-object v5, p0, Lcom/adobe/air/FileChooserStub;->m_filterList:Ljava/util/ArrayList;

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    :cond_6
    :goto_3
    if-eqz p2, :cond_7

    const-string p2, "android.intent.extra.ALLOW_MULTIPLE"

    .line 165
    invoke-virtual {v1, p2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_7
    const-string p2, "/"

    .line 166
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    const-string p2, "android.provider.extra.INITIAL_URI"

    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_8
    const/4 p1, 0x7

    .line 168
    :try_start_0
    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2, v1, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    const-string p2, "*/*"

    .line 172
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2, v1, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 175
    :goto_4
    iget-object p1, p0, Lcom/adobe/air/FileChooserStub;->m_lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 178
    :try_start_1
    iget-object p1, p0, Lcom/adobe/air/FileChooserStub;->m_userAction:Ljava/lang/String;

    if-nez p1, :cond_9

    .line 179
    iget-object p1, p0, Lcom/adobe/air/FileChooserStub;->m_condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception p1

    .line 184
    iget-object p2, p0, Lcom/adobe/air/FileChooserStub;->m_lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 185
    throw p1

    .line 184
    :catch_1
    :cond_9
    :goto_5
    iget-object p1, p0, Lcom/adobe/air/FileChooserStub;->m_lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public userCancelled()Z
    .locals 2

    .line 239
    iget-object v0, p0, Lcom/adobe/air/FileChooserStub;->m_userAction:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adobe/air/FileChooserStub;->m_userAction:Ljava/lang/String;

    const-string v1, "cancel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
