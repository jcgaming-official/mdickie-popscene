.class public Lcom/adobe/air/AndroidTimeUtils;
.super Ljava/lang/Object;
.source "AndroidTimeUtils.java"


# instance fields
.field private timeZone:Ljava/util/TimeZone;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Ljava/util/TimeZone;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/adobe/air/AndroidTimeUtils;->timeZone:Ljava/util/TimeZone;

    return-void
.end method

.method public static getAvailableIds()[Ljava/lang/Object;
    .locals 1

    .line 20
    invoke-static {}, Ljava/util/TimeZone;->getAvailableIDs()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTimeZoneClass(Ljava/lang/String;)Lcom/adobe/air/AndroidTimeUtils;
    .locals 2

    if-eqz p0, :cond_0

    .line 27
    invoke-static {p0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 32
    :cond_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 34
    :cond_1
    new-instance p0, Lcom/adobe/air/AndroidTimeUtils;

    invoke-direct {p0, v0}, Lcom/adobe/air/AndroidTimeUtils;-><init>(Ljava/util/TimeZone;)V

    return-object p0
.end method


# virtual methods
.method public getDSTSavings()I
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/adobe/air/AndroidTimeUtils;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v0}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v0

    return v0
.end method

.method public getOffset(J)I
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/adobe/air/AndroidTimeUtils;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v0, p1, p2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result p1

    return p1
.end method

.method public getRawOffset()I
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/adobe/air/AndroidTimeUtils;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    return v0
.end method

.method public getTimeZoneInfo()Ljava/lang/Object;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/adobe/air/AndroidTimeUtils;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public observesDaylightTime()Z
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/adobe/air/AndroidTimeUtils;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v0}, Ljava/util/TimeZone;->observesDaylightTime()Z

    move-result v0

    return v0
.end method

.method public useDaylightTime()Z
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/adobe/air/AndroidTimeUtils;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v0}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v0

    return v0
.end method
