.class public Lcom/adobe/air/AndroidClipboardManager;
.super Ljava/lang/Object;
.source "AndroidClipboardManager.java"


# instance fields
.field _ctx:Landroid/content/Context;

.field _mgr:Landroid/content/ClipboardManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/adobe/air/AndroidClipboardManager;->_ctx:Landroid/content/Context;

    .line 18
    invoke-static {}, Lcom/harman/services/AIRRuntimeCheck;->shouldDisableClipboardAccess()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "clipboard"

    .line 19
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    :goto_0
    iput-object p1, p0, Lcom/adobe/air/AndroidClipboardManager;->_mgr:Landroid/content/ClipboardManager;

    return-void
.end method


# virtual methods
.method public clearClipboard()V
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/adobe/air/AndroidClipboardManager;->_mgr:Landroid/content/ClipboardManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/air/AndroidClipboardManager;->_mgr:Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->clearPrimaryClip()V

    :cond_0
    return-void
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 4

    .line 47
    iget-object v0, p0, Lcom/adobe/air/AndroidClipboardManager;->_mgr:Landroid/content/ClipboardManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AndroidClipboardManager;->_mgr:Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    :goto_0
    if-nez v1, :cond_1

    .line 52
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v3

    if-lez v3, :cond_1

    .line 53
    invoke-virtual {v0, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    .line 54
    iget-object v3, p0, Lcom/adobe/air/AndroidClipboardManager;->_ctx:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public hasText()Z
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/adobe/air/AndroidClipboardManager;->_mgr:Landroid/content/ClipboardManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AndroidClipboardManager;->_mgr:Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClipDescription()Landroid/content/ClipDescription;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "text/plain"

    .line 65
    invoke-virtual {v0, v1}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v1

    :cond_1
    return v1
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/adobe/air/AndroidClipboardManager;->_mgr:Landroid/content/ClipboardManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 30
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, "Copied text"

    .line 31
    invoke-static {v0, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    .line 32
    iget-object v0, p0, Lcom/adobe/air/AndroidClipboardManager;->_mgr:Landroid/content/ClipboardManager;

    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    goto :goto_0

    .line 36
    :cond_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-lt p1, v0, :cond_2

    .line 37
    invoke-virtual {p0}, Lcom/adobe/air/AndroidClipboardManager;->clearClipboard()V

    goto :goto_0

    :cond_2
    const-string p1, ""

    const-string v0, ""

    .line 40
    invoke-static {p1, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    .line 41
    iget-object v0, p0, Lcom/adobe/air/AndroidClipboardManager;->_mgr:Landroid/content/ClipboardManager;

    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    :goto_0
    return-void
.end method
