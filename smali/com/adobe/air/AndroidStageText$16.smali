.class Lcom/adobe/air/AndroidStageText$16;
.super Ljava/lang/Object;
.source "AndroidStageText.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/air/AndroidStageText;->setBorderColor(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/air/AndroidStageText;

.field final synthetic val$alpha:I

.field final synthetic val$blue:I

.field final synthetic val$green:I

.field final synthetic val$red:I


# direct methods
.method constructor <init>(Lcom/adobe/air/AndroidStageText;IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 316
    iput-object p1, p0, Lcom/adobe/air/AndroidStageText$16;->this$0:Lcom/adobe/air/AndroidStageText;

    iput p2, p0, Lcom/adobe/air/AndroidStageText$16;->val$red:I

    iput p3, p0, Lcom/adobe/air/AndroidStageText$16;->val$green:I

    iput p4, p0, Lcom/adobe/air/AndroidStageText$16;->val$blue:I

    iput p5, p0, Lcom/adobe/air/AndroidStageText$16;->val$alpha:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 319
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText$16;->this$0:Lcom/adobe/air/AndroidStageText;

    invoke-static {v0}, Lcom/adobe/air/AndroidStageText;->access$000(Lcom/adobe/air/AndroidStageText;)Lcom/adobe/air/AndroidStageTextAsync;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 320
    iget v1, p0, Lcom/adobe/air/AndroidStageText$16;->val$red:I

    iget v2, p0, Lcom/adobe/air/AndroidStageText$16;->val$green:I

    iget v3, p0, Lcom/adobe/air/AndroidStageText$16;->val$blue:I

    iget v4, p0, Lcom/adobe/air/AndroidStageText$16;->val$alpha:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/adobe/air/AndroidStageTextAsync;->setBorderColor(IIII)V

    :cond_0
    return-void
.end method
