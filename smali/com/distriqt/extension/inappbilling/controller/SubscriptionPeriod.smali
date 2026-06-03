.class public Lcom/distriqt/extension/inappbilling/controller/SubscriptionPeriod;
.super Ljava/lang/Object;
.source "SubscriptionPeriod.java"


# static fields
.field private static final PATTERN:Ljava/util/regex/Pattern;

.field public static final UNIT_DAY:Ljava/lang/String; = "day"

.field public static final UNIT_MONTH:Ljava/lang/String; = "month"

.field public static final UNIT_WEEK:Ljava/lang/String; = "week"

.field public static final UNIT_YEAR:Ljava/lang/String; = "year"


# instance fields
.field public numberOfUnits:I

.field public unit:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "([-+]?)P(?:([-+]?[0-9]+)Y)?(?:([-+]?[0-9]+)M)?(?:([-+]?[0-9]+)W)?(?:([-+]?[0-9]+)D)?"

    const/4 v1, 0x2

    .line 51
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPeriod;->PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPeriod;->numberOfUnits:I

    const-string v0, ""

    .line 37
    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPeriod;->unit:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPeriod;->numberOfUnits:I

    const-string v0, ""

    .line 37
    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPeriod;->unit:Ljava/lang/String;

    .line 45
    iput-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPeriod;->unit:Ljava/lang/String;

    .line 46
    iput p2, p0, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPeriod;->numberOfUnits:I

    return-void
.end method

.method public static fromIOS8601(Ljava/lang/String;)Lcom/distriqt/extension/inappbilling/controller/SubscriptionPeriod;
    .locals 6

    .line 56
    new-instance v0, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPeriod;

    invoke-direct {v0}, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPeriod;-><init>()V

    .line 59
    :try_start_0
    sget-object v1, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPeriod;->PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 60
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "-"

    const/4 v2, 0x1

    .line 62
    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, -0x1

    :cond_0
    const/4 v1, 0x2

    .line 63
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    .line 64
    invoke-virtual {p0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    .line 65
    invoke-virtual {p0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    .line 66
    invoke-virtual {p0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    if-nez v1, :cond_1

    if-nez v3, :cond_1

    if-nez p0, :cond_1

    if-eqz v4, :cond_5

    .line 69
    :cond_1
    invoke-static {v1, v2}, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPeriod;->parseNumber(Ljava/lang/String;I)I

    move-result v1

    .line 70
    invoke-static {v3, v2}, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPeriod;->parseNumber(Ljava/lang/String;I)I

    move-result v3

    .line 71
    invoke-static {v4, v2}, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPeriod;->parseNumber(Ljava/lang/String;I)I

    move-result v4

    .line 72
    invoke-static {p0, v2}, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPeriod;->parseNumber(Ljava/lang/String;I)I

    move-result p0

    if-lez v1, :cond_2

    const-string p0, "year"

    .line 76
    iput-object p0, v0, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPeriod;->unit:Ljava/lang/String;

    .line 77
    iput v1, v0, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPeriod;->numberOfUnits:I

    goto :goto_0

    :cond_2
    if-lez v3, :cond_3

    const-string p0, "month"

    .line 81
    iput-object p0, v0, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPeriod;->unit:Ljava/lang/String;

    .line 82
    iput v3, v0, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPeriod;->numberOfUnits:I

    goto :goto_0

    :cond_3
    if-lez v4, :cond_4

    const-string p0, "week"

    .line 86
    iput-object p0, v0, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPeriod;->unit:Ljava/lang/String;

    .line 87
    iput v4, v0, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPeriod;->numberOfUnits:I

    goto :goto_0

    :cond_4
    if-lez p0, :cond_5

    const-string v1, "day"

    .line 91
    iput-object v1, v0, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPeriod;->unit:Ljava/lang/String;

    .line 92
    iput p0, v0, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPeriod;->numberOfUnits:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 99
    invoke-static {p0}, Lcom/distriqt/extension/inappbilling/utils/Errors;->handleException(Ljava/lang/Throwable;)V

    :cond_5
    :goto_0
    return-object v0
.end method

.method private static parseNumber(Ljava/lang/String;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 126
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    mul-int p0, p0, p1

    return p0
.end method


# virtual methods
.method public toJSONObject()Lorg/json/JSONObject;
    .locals 3

    .line 107
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "numberOfUnits"

    .line 110
    iget v2, p0, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPeriod;->numberOfUnits:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "unit"

    .line 111
    iget-object v2, p0, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPeriod;->unit:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method
