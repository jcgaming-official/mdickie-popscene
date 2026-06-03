.class public final Lcom/distriqt/extension/inappbilling/utils/Period;
.super Ljava/lang/Object;
.source "Period.java"


# static fields
.field private static final PATTERN:Ljava/util/regex/Pattern;

.field public static final ZERO:Lcom/distriqt/extension/inappbilling/utils/Period;

.field private static final serialVersionUID:J = -0xcbe97ad039fbcL


# instance fields
.field private final days:I

.field private final months:I

.field private final years:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 73
    new-instance v0, Lcom/distriqt/extension/inappbilling/utils/Period;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcom/distriqt/extension/inappbilling/utils/Period;-><init>(III)V

    sput-object v0, Lcom/distriqt/extension/inappbilling/utils/Period;->ZERO:Lcom/distriqt/extension/inappbilling/utils/Period;

    const-string v0, "([-+]?)P(?:([-+]?[0-9]+)Y)?(?:([-+]?[0-9]+)M)?(?:([-+]?[0-9]+)W)?(?:([-+]?[0-9]+)D)?"

    const/4 v1, 0x2

    .line 82
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/distriqt/extension/inappbilling/utils/Period;->PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(III)V
    .locals 0

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    iput p1, p0, Lcom/distriqt/extension/inappbilling/utils/Period;->years:I

    .line 260
    iput p2, p0, Lcom/distriqt/extension/inappbilling/utils/Period;->months:I

    .line 261
    iput p3, p0, Lcom/distriqt/extension/inappbilling/utils/Period;->days:I

    return-void
.end method

.method private static create(III)Lcom/distriqt/extension/inappbilling/utils/Period;
    .locals 1

    or-int v0, p0, p1

    or-int/2addr v0, p2

    if-nez v0, :cond_0

    .line 247
    sget-object p0, Lcom/distriqt/extension/inappbilling/utils/Period;->ZERO:Lcom/distriqt/extension/inappbilling/utils/Period;

    return-object p0

    .line 249
    :cond_0
    new-instance v0, Lcom/distriqt/extension/inappbilling/utils/Period;

    invoke-direct {v0, p0, p1, p2}, Lcom/distriqt/extension/inappbilling/utils/Period;-><init>(III)V

    return-object v0
.end method

.method public static of(III)Lcom/distriqt/extension/inappbilling/utils/Period;
    .locals 0

    .line 158
    invoke-static {p0, p1, p2}, Lcom/distriqt/extension/inappbilling/utils/Period;->create(III)Lcom/distriqt/extension/inappbilling/utils/Period;

    move-result-object p0

    return-object p0
.end method

.method public static ofDays(I)Lcom/distriqt/extension/inappbilling/utils/Period;
    .locals 1

    const/4 v0, 0x0

    .line 144
    invoke-static {v0, v0, p0}, Lcom/distriqt/extension/inappbilling/utils/Period;->create(III)Lcom/distriqt/extension/inappbilling/utils/Period;

    move-result-object p0

    return-object p0
.end method

.method public static ofMonths(I)Lcom/distriqt/extension/inappbilling/utils/Period;
    .locals 1

    const/4 v0, 0x0

    .line 119
    invoke-static {v0, p0, v0}, Lcom/distriqt/extension/inappbilling/utils/Period;->create(III)Lcom/distriqt/extension/inappbilling/utils/Period;

    move-result-object p0

    return-object p0
.end method

.method public static ofWeeks(I)Lcom/distriqt/extension/inappbilling/utils/Period;
    .locals 1

    mul-int/lit8 p0, p0, 0x7

    const/4 v0, 0x0

    .line 132
    invoke-static {v0, v0, p0}, Lcom/distriqt/extension/inappbilling/utils/Period;->create(III)Lcom/distriqt/extension/inappbilling/utils/Period;

    move-result-object p0

    return-object p0
.end method

.method public static ofYears(I)Lcom/distriqt/extension/inappbilling/utils/Period;
    .locals 1

    const/4 v0, 0x0

    .line 107
    invoke-static {p0, v0, v0}, Lcom/distriqt/extension/inappbilling/utils/Period;->create(III)Lcom/distriqt/extension/inappbilling/utils/Period;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/CharSequence;)Lcom/distriqt/extension/inappbilling/utils/Period;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 203
    sget-object v0, Lcom/distriqt/extension/inappbilling/utils/Period;->PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 204
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "-"

    const/4 v2, 0x1

    .line 205
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, -0x1

    :cond_0
    const/4 v1, 0x2

    .line 206
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    .line 207
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    .line 208
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    .line 209
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    if-nez v1, :cond_1

    if-nez v3, :cond_1

    if-nez v0, :cond_1

    if-eqz v4, :cond_2

    .line 212
    :cond_1
    :try_start_0
    invoke-static {p0, v1, v2}, Lcom/distriqt/extension/inappbilling/utils/Period;->parseNumber(Ljava/lang/CharSequence;Ljava/lang/String;I)I

    move-result v1

    .line 213
    invoke-static {p0, v3, v2}, Lcom/distriqt/extension/inappbilling/utils/Period;->parseNumber(Ljava/lang/CharSequence;Ljava/lang/String;I)I

    move-result v3

    .line 214
    invoke-static {p0, v4, v2}, Lcom/distriqt/extension/inappbilling/utils/Period;->parseNumber(Ljava/lang/CharSequence;Ljava/lang/String;I)I

    move-result v4

    .line 215
    invoke-static {p0, v0, v2}, Lcom/distriqt/extension/inappbilling/utils/Period;->parseNumber(Ljava/lang/CharSequence;Ljava/lang/String;I)I

    move-result p0

    mul-int/lit8 v4, v4, 0x7

    add-int/2addr p0, v4

    .line 217
    invoke-static {v1, v3, p0}, Lcom/distriqt/extension/inappbilling/utils/Period;->create(III)Lcom/distriqt/extension/inappbilling/utils/Period;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 219
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Text cannot be parsed to a Period"

    invoke-direct {v0, v1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 223
    :cond_2
    new-instance p0, Ljava/lang/Exception;

    const-string v0, "Text cannot be parsed to a Period"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static parseNumber(Ljava/lang/CharSequence;Ljava/lang/String;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 229
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    mul-int p0, p0, p2

    return p0
.end method


# virtual methods
.method public getDays()I
    .locals 1

    .line 321
    iget v0, p0, Lcom/distriqt/extension/inappbilling/utils/Period;->days:I

    return v0
.end method

.method public getMonths()I
    .locals 1

    .line 311
    iget v0, p0, Lcom/distriqt/extension/inappbilling/utils/Period;->months:I

    return v0
.end method

.method public getYears()I
    .locals 1

    .line 297
    iget v0, p0, Lcom/distriqt/extension/inappbilling/utils/Period;->years:I

    return v0
.end method

.method public isNegative()Z
    .locals 1

    .line 282
    iget v0, p0, Lcom/distriqt/extension/inappbilling/utils/Period;->years:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/distriqt/extension/inappbilling/utils/Period;->months:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/distriqt/extension/inappbilling/utils/Period;->days:I

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isZero()Z
    .locals 1

    .line 272
    sget-object v0, Lcom/distriqt/extension/inappbilling/utils/Period;->ZERO:Lcom/distriqt/extension/inappbilling/utils/Period;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 398
    sget-object v0, Lcom/distriqt/extension/inappbilling/utils/Period;->ZERO:Lcom/distriqt/extension/inappbilling/utils/Period;

    if-ne p0, v0, :cond_0

    const-string v0, "P0D"

    return-object v0

    .line 401
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x50

    .line 402
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 403
    iget v1, p0, Lcom/distriqt/extension/inappbilling/utils/Period;->years:I

    if-eqz v1, :cond_1

    .line 404
    iget v1, p0, Lcom/distriqt/extension/inappbilling/utils/Period;->years:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x59

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 406
    :cond_1
    iget v1, p0, Lcom/distriqt/extension/inappbilling/utils/Period;->months:I

    if-eqz v1, :cond_2

    .line 407
    iget v1, p0, Lcom/distriqt/extension/inappbilling/utils/Period;->months:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x4d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 409
    :cond_2
    iget v1, p0, Lcom/distriqt/extension/inappbilling/utils/Period;->days:I

    if-eqz v1, :cond_3

    .line 410
    iget v1, p0, Lcom/distriqt/extension/inappbilling/utils/Period;->days:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 412
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withDays(I)Lcom/distriqt/extension/inappbilling/utils/Period;
    .locals 2

    .line 378
    iget v0, p0, Lcom/distriqt/extension/inappbilling/utils/Period;->days:I

    if-ne p1, v0, :cond_0

    return-object p0

    .line 381
    :cond_0
    iget v0, p0, Lcom/distriqt/extension/inappbilling/utils/Period;->years:I

    iget v1, p0, Lcom/distriqt/extension/inappbilling/utils/Period;->months:I

    invoke-static {v0, v1, p1}, Lcom/distriqt/extension/inappbilling/utils/Period;->create(III)Lcom/distriqt/extension/inappbilling/utils/Period;

    move-result-object p1

    return-object p1
.end method

.method public withMonths(I)Lcom/distriqt/extension/inappbilling/utils/Period;
    .locals 2

    .line 361
    iget v0, p0, Lcom/distriqt/extension/inappbilling/utils/Period;->months:I

    if-ne p1, v0, :cond_0

    return-object p0

    .line 364
    :cond_0
    iget v0, p0, Lcom/distriqt/extension/inappbilling/utils/Period;->years:I

    iget v1, p0, Lcom/distriqt/extension/inappbilling/utils/Period;->days:I

    invoke-static {v0, p1, v1}, Lcom/distriqt/extension/inappbilling/utils/Period;->create(III)Lcom/distriqt/extension/inappbilling/utils/Period;

    move-result-object p1

    return-object p1
.end method

.method public withYears(I)Lcom/distriqt/extension/inappbilling/utils/Period;
    .locals 2

    .line 340
    iget v0, p0, Lcom/distriqt/extension/inappbilling/utils/Period;->years:I

    if-ne p1, v0, :cond_0

    return-object p0

    .line 343
    :cond_0
    iget v0, p0, Lcom/distriqt/extension/inappbilling/utils/Period;->months:I

    iget v1, p0, Lcom/distriqt/extension/inappbilling/utils/Period;->days:I

    invoke-static {p1, v0, v1}, Lcom/distriqt/extension/inappbilling/utils/Period;->create(III)Lcom/distriqt/extension/inappbilling/utils/Period;

    move-result-object p1

    return-object p1
.end method
