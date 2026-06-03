.class Lcom/adobe/air/AndroidStageText$33;
.super Ljava/lang/Object;
.source "AndroidStageText.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/air/AndroidStageText;->clearFocus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/air/AndroidStageText;


# direct methods
.method constructor <init>(Lcom/adobe/air/AndroidStageText;)V
    .locals 0

    .line 548
    iput-object p1, p0, Lcom/adobe/air/AndroidStageText$33;->this$0:Lcom/adobe/air/AndroidStageText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 551
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText$33;->this$0:Lcom/adobe/air/AndroidStageText;

    invoke-static {v0}, Lcom/adobe/air/AndroidStageText;->access$000(Lcom/adobe/air/AndroidStageText;)Lcom/adobe/air/AndroidStageTextAsync;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 552
    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageTextAsync;->clearFocus()V

    :cond_0
    return-void
.end method
