.class Lcom/adobe/air/AndroidStageText$3;
.super Ljava/lang/Object;
.source "AndroidStageText.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/air/AndroidStageText;->removeFromStage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/air/AndroidStageText;

.field final synthetic val$tmpRef:Lcom/adobe/air/AndroidStageTextAsync;


# direct methods
.method constructor <init>(Lcom/adobe/air/AndroidStageText;Lcom/adobe/air/AndroidStageTextAsync;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 129
    iput-object p1, p0, Lcom/adobe/air/AndroidStageText$3;->this$0:Lcom/adobe/air/AndroidStageText;

    iput-object p2, p0, Lcom/adobe/air/AndroidStageText$3;->val$tmpRef:Lcom/adobe/air/AndroidStageTextAsync;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText$3;->val$tmpRef:Lcom/adobe/air/AndroidStageTextAsync;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageTextAsync;->removeFromStage()V

    return-void
.end method
