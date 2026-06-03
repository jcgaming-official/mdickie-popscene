.class final enum Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController$PURCHASE_UPDATES_TYPE;
.super Ljava/lang/Enum;
.source "AmazonBillingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PURCHASE_UPDATES_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController$PURCHASE_UPDATES_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController$PURCHASE_UPDATES_TYPE;

.field public static final enum CONSUME:Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController$PURCHASE_UPDATES_TYPE;

.field public static final enum GET_PURCHASES:Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController$PURCHASE_UPDATES_TYPE;

.field public static final enum RESTORE:Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController$PURCHASE_UPDATES_TYPE;


# direct methods
.method private static synthetic $values()[Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController$PURCHASE_UPDATES_TYPE;
    .locals 3

    const/4 v0, 0x3

    .line 95
    new-array v0, v0, [Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController$PURCHASE_UPDATES_TYPE;

    sget-object v1, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController$PURCHASE_UPDATES_TYPE;->GET_PURCHASES:Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController$PURCHASE_UPDATES_TYPE;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController$PURCHASE_UPDATES_TYPE;->RESTORE:Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController$PURCHASE_UPDATES_TYPE;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController$PURCHASE_UPDATES_TYPE;->CONSUME:Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController$PURCHASE_UPDATES_TYPE;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 97
    new-instance v0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController$PURCHASE_UPDATES_TYPE;

    const-string v1, "GET_PURCHASES"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController$PURCHASE_UPDATES_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController$PURCHASE_UPDATES_TYPE;->GET_PURCHASES:Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController$PURCHASE_UPDATES_TYPE;

    .line 98
    new-instance v0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController$PURCHASE_UPDATES_TYPE;

    const-string v1, "RESTORE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController$PURCHASE_UPDATES_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController$PURCHASE_UPDATES_TYPE;->RESTORE:Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController$PURCHASE_UPDATES_TYPE;

    .line 99
    new-instance v0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController$PURCHASE_UPDATES_TYPE;

    const-string v1, "CONSUME"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController$PURCHASE_UPDATES_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController$PURCHASE_UPDATES_TYPE;->CONSUME:Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController$PURCHASE_UPDATES_TYPE;

    .line 95
    invoke-static {}, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController$PURCHASE_UPDATES_TYPE;->$values()[Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController$PURCHASE_UPDATES_TYPE;

    move-result-object v0

    sput-object v0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController$PURCHASE_UPDATES_TYPE;->$VALUES:[Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController$PURCHASE_UPDATES_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 95
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController$PURCHASE_UPDATES_TYPE;
    .locals 1

    .line 95
    const-class v0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController$PURCHASE_UPDATES_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController$PURCHASE_UPDATES_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController$PURCHASE_UPDATES_TYPE;
    .locals 1

    .line 95
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController$PURCHASE_UPDATES_TYPE;->$VALUES:[Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController$PURCHASE_UPDATES_TYPE;

    invoke-virtual {v0}, [Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController$PURCHASE_UPDATES_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController$PURCHASE_UPDATES_TYPE;

    return-object v0
.end method
