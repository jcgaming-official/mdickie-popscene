.class Lcom/adobe/air/AndroidStageText$25;
.super Ljava/lang/Object;
.source "AndroidStageText.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/air/AndroidStageText;->setPreventDefault(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/air/AndroidStageText;

.field final synthetic val$inValue:Z


# direct methods
.method constructor <init>(Lcom/adobe/air/AndroidStageText;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 450
    iput-object p1, p0, Lcom/adobe/air/AndroidStageText$25;->this$0:Lcom/adobe/air/AndroidStageText;

    iput-boolean p2, p0, Lcom/adobe/air/AndroidStageText$25;->val$inValue:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 453
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText$25;->this$0:Lcom/adobe/air/AndroidStageText;

    invoke-static {v0}, Lcom/adobe/air/AndroidStageText;->access$000(Lcom/adobe/air/AndroidStageText;)Lcom/adobe/air/AndroidStageTextAsync;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 454
    iget-boolean v1, p0, Lcom/adobe/air/AndroidStageText$25;->val$inValue:Z

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidStageTextAsync;->setPreventDefault(Z)V

    :cond_0
    return-void
.end method
