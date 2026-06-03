.class public final Lcom/google/android/gms/tagmanager/zzfu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager-v4-impl@@18.0.4"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation


# static fields
.field private static final zza:Ljava/lang/Long;

.field private static final zzb:Ljava/lang/Double;

.field private static final zzc:Lcom/google/android/gms/tagmanager/zzft;

.field private static final zzd:Ljava/lang/String;

.field private static final zze:Ljava/lang/Boolean;

.field private static final zzf:Ljava/util/List;

.field private static final zzg:Ljava/util/Map;

.field private static final zzh:Lcom/google/android/gms/internal/gtm/zzam;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/Long;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    sput-object v0, Lcom/google/android/gms/tagmanager/zzfu;->zza:Ljava/lang/Long;

    new-instance v0, Ljava/lang/Double;

    const-wide/16 v3, 0x0

    .line 2
    invoke-direct {v0, v3, v4}, Ljava/lang/Double;-><init>(D)V

    sput-object v0, Lcom/google/android/gms/tagmanager/zzfu;->zzb:Ljava/lang/Double;

    .line 3
    invoke-static {v1, v2}, Lcom/google/android/gms/tagmanager/zzft;->zzd(J)Lcom/google/android/gms/tagmanager/zzft;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzfu;->zzc:Lcom/google/android/gms/tagmanager/zzft;

    new-instance v0, Ljava/lang/String;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/tagmanager/zzfu;->zzd:Ljava/lang/String;

    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Lcom/google/android/gms/tagmanager/zzfu;->zze:Ljava/lang/Boolean;

    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/tagmanager/zzfu;->zzf:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/tagmanager/zzfu;->zzg:Ljava/util/Map;

    sget-object v0, Lcom/google/android/gms/tagmanager/zzfu;->zzd:Ljava/lang/String;

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzfu;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/gtm/zzam;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzfu;->zzh:Lcom/google/android/gms/internal/gtm/zzam;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/gtm/zzam;
    .locals 1

    sget-object v0, Lcom/google/android/gms/tagmanager/zzfu;->zzh:Lcom/google/android/gms/internal/gtm/zzam;

    return-object v0
.end method

.method public static zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/gtm/zzam;
    .locals 9

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzam;->zzg()Lcom/google/android/gms/internal/gtm/zzan;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/gtm/zzat;->zza:Lcom/google/android/gms/internal/gtm/zzat;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gtm/zzan;->zzt(Lcom/google/android/gms/internal/gtm/zzat;)Lcom/google/android/gms/internal/gtm/zzan;

    instance-of v1, p0, Lcom/google/android/gms/internal/gtm/zzam;

    if-eqz v1, :cond_0

    .line 2
    check-cast p0, Lcom/google/android/gms/internal/gtm/zzam;

    return-object p0

    .line 3
    :cond_0
    instance-of v1, p0, Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/gtm/zzat;->zza:Lcom/google/android/gms/internal/gtm/zzat;

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gtm/zzan;->zzt(Lcom/google/android/gms/internal/gtm/zzat;)Lcom/google/android/gms/internal/gtm/zzan;

    .line 5
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/gtm/zzan;->zzs(Ljava/lang/String;)Lcom/google/android/gms/internal/gtm/zzan;

    goto/16 :goto_7

    .line 6
    :cond_1
    instance-of v1, p0, Ljava/util/List;

    const/4 v3, 0x1

    if-eqz v1, :cond_6

    sget-object v1, Lcom/google/android/gms/internal/gtm/zzat;->zzb:Lcom/google/android/gms/internal/gtm/zzat;

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gtm/zzan;->zzt(Lcom/google/android/gms/internal/gtm/zzat;)Lcom/google/android/gms/internal/gtm/zzan;

    .line 8
    check-cast p0, Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    .line 9
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v4, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 11
    invoke-static {v5}, Lcom/google/android/gms/tagmanager/zzfu;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/gtm/zzam;

    move-result-object v5

    sget-object v6, Lcom/google/android/gms/tagmanager/zzfu;->zzh:Lcom/google/android/gms/internal/gtm/zzam;

    if-ne v5, v6, :cond_2

    return-object v6

    :cond_2
    if-nez v4, :cond_4

    .line 12
    invoke-virtual {v5}, Lcom/google/android/gms/internal/gtm/zzam;->zzP()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v4, 0x1

    .line 13
    :goto_2
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14
    :cond_5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzan;->zzj()Lcom/google/android/gms/internal/gtm/zzan;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gtm/zzan;->zzb(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/gtm/zzan;

    move v2, v4

    goto/16 :goto_7

    .line 15
    :cond_6
    instance-of v1, p0, Ljava/util/Map;

    if-eqz v1, :cond_c

    sget-object v1, Lcom/google/android/gms/internal/gtm/zzat;->zzc:Lcom/google/android/gms/internal/gtm/zzat;

    .line 16
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gtm/zzan;->zzt(Lcom/google/android/gms/internal/gtm/zzat;)Lcom/google/android/gms/internal/gtm/zzan;

    .line 17
    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    new-instance v1, Ljava/util/ArrayList;

    .line 18
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v4, Ljava/util/ArrayList;

    .line 19
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 20
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v5, 0x0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 21
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/tagmanager/zzfu;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/gtm/zzam;

    move-result-object v7

    .line 22
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/tagmanager/zzfu;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/gtm/zzam;

    move-result-object v6

    sget-object v8, Lcom/google/android/gms/tagmanager/zzfu;->zzh:Lcom/google/android/gms/internal/gtm/zzam;

    if-eq v7, v8, :cond_a

    if-ne v6, v8, :cond_7

    goto :goto_6

    :cond_7
    if-nez v5, :cond_9

    .line 23
    invoke-virtual {v7}, Lcom/google/android/gms/internal/gtm/zzam;->zzP()Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {v6}, Lcom/google/android/gms/internal/gtm/zzam;->zzP()Z

    move-result v5

    if-eqz v5, :cond_8

    goto :goto_4

    :cond_8
    const/4 v5, 0x0

    goto :goto_5

    :cond_9
    :goto_4
    const/4 v5, 0x1

    .line 24
    :goto_5
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_a
    :goto_6
    return-object v8

    .line 26
    :cond_b
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzan;->zzk()Lcom/google/android/gms/internal/gtm/zzan;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gtm/zzan;->zzc(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/gtm/zzan;

    .line 27
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzan;->zzl()Lcom/google/android/gms/internal/gtm/zzan;

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/gtm/zzan;->zzd(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/gtm/zzan;

    move v2, v5

    goto :goto_7

    .line 28
    :cond_c
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzfu;->zzq(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    sget-object v1, Lcom/google/android/gms/internal/gtm/zzat;->zza:Lcom/google/android/gms/internal/gtm/zzat;

    .line 29
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gtm/zzan;->zzt(Lcom/google/android/gms/internal/gtm/zzat;)Lcom/google/android/gms/internal/gtm/zzan;

    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/gtm/zzan;->zzs(Ljava/lang/String;)Lcom/google/android/gms/internal/gtm/zzan;

    goto :goto_7

    .line 31
    :cond_d
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzfu;->zzr(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    sget-object v1, Lcom/google/android/gms/internal/gtm/zzat;->zzf:Lcom/google/android/gms/internal/gtm/zzat;

    .line 32
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gtm/zzan;->zzt(Lcom/google/android/gms/internal/gtm/zzat;)Lcom/google/android/gms/internal/gtm/zzan;

    .line 33
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzfu;->zzo(Ljava/lang/Object;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/gtm/zzan;->zzq(J)Lcom/google/android/gms/internal/gtm/zzan;

    goto :goto_7

    .line 34
    :cond_e
    instance-of v1, p0, Ljava/lang/Boolean;

    if-eqz v1, :cond_f

    sget-object v1, Lcom/google/android/gms/internal/gtm/zzat;->zzh:Lcom/google/android/gms/internal/gtm/zzat;

    .line 35
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gtm/zzan;->zzt(Lcom/google/android/gms/internal/gtm/zzat;)Lcom/google/android/gms/internal/gtm/zzan;

    .line 36
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/gtm/zzan;->zzn(Z)Lcom/google/android/gms/internal/gtm/zzan;

    .line 37
    :goto_7
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/gtm/zzan;->zzo(Z)Lcom/google/android/gms/internal/gtm/zzan;

    .line 38
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzxp;->zzB()Lcom/google/android/gms/internal/gtm/zzxv;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/gtm/zzam;

    return-object p0

    :cond_f
    if-nez p0, :cond_10

    const-string p0, "null"

    goto :goto_8

    .line 40
    :cond_10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .line 39
    invoke-virtual {p0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_8
    const-string v0, "Converting to Value from unknown object type: "

    .line 36
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "GoogleTagManager"

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 40
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/google/android/gms/tagmanager/zzfu;->zzh:Lcom/google/android/gms/internal/gtm/zzam;

    return-object p0
.end method

.method public static zzc()Lcom/google/android/gms/tagmanager/zzft;
    .locals 1

    sget-object v0, Lcom/google/android/gms/tagmanager/zzfu;->zzc:Lcom/google/android/gms/tagmanager/zzft;

    return-object v0
.end method

.method public static zzd(Ljava/lang/Object;)Lcom/google/android/gms/tagmanager/zzft;
    .locals 2

    .line 1
    instance-of v0, p0, Lcom/google/android/gms/tagmanager/zzft;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/android/gms/tagmanager/zzft;

    return-object p0

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzfu;->zzr(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzfu;->zzo(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/tagmanager/zzft;->zzd(J)Lcom/google/android/gms/tagmanager/zzft;

    move-result-object p0

    return-object p0

    .line 4
    :cond_1
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzfu;->zzq(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzfu;->zzn(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzft;->zzc(Ljava/lang/Double;)Lcom/google/android/gms/tagmanager/zzft;

    move-result-object p0

    return-object p0

    .line 6
    :cond_2
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzfu;->zzm(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzfu;->zzp(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/zzft;

    move-result-object p0

    return-object p0
.end method

.method public static zze()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Lcom/google/android/gms/tagmanager/zzfu;->zze:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static zzf(Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 1

    .line 1
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzfu;->zzm(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "true"

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    const-string v0, "false"

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/google/android/gms/tagmanager/zzfu;->zze:Ljava/lang/Boolean;

    :goto_0
    return-object p0
.end method

.method public static zzg()Ljava/lang/Double;
    .locals 1

    sget-object v0, Lcom/google/android/gms/tagmanager/zzfu;->zzb:Ljava/lang/Double;

    return-object v0
.end method

.method public static zzh(Ljava/lang/Object;)Ljava/lang/Double;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzfu;->zzq(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzfu;->zzn(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzfu;->zzm(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzfu;->zzp(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/zzft;

    move-result-object p0

    sget-object v0, Lcom/google/android/gms/tagmanager/zzfu;->zzc:Lcom/google/android/gms/tagmanager/zzft;

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/google/android/gms/tagmanager/zzfu;->zzb:Ljava/lang/Double;

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/zzft;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static zzi()Ljava/lang/Long;
    .locals 1

    sget-object v0, Lcom/google/android/gms/tagmanager/zzfu;->zza:Ljava/lang/Long;

    return-object v0
.end method

.method public static zzj(Ljava/lang/Object;)Ljava/lang/Long;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzfu;->zzr(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzfu;->zzo(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzfu;->zzm(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzfu;->zzp(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/zzft;

    move-result-object p0

    sget-object v0, Lcom/google/android/gms/tagmanager/zzfu;->zzc:Lcom/google/android/gms/tagmanager/zzft;

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/google/android/gms/tagmanager/zzfu;->zza:Ljava/lang/Long;

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/zzft;->zzb()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static zzk(Lcom/google/android/gms/internal/gtm/zzam;)Ljava/lang/Object;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/gtm/zzat;->zza:Lcom/google/android/gms/internal/gtm/zzat;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzam;->zzh()Lcom/google/android/gms/internal/gtm/zzat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzat;->ordinal()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 22
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzam;->zzh()Lcom/google/android/gms/internal/gtm/zzat;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Failed to convert a value of type: "

    const-string v2, "GoogleTagManager"

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 23
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 1
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzam;->zzO()Z

    move-result p0

    .line 2
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzam;->zzt()Ljava/util/List;

    move-result-object p0

    .line 4
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/gtm/zzam;

    .line 5
    invoke-static {v2}, Lcom/google/android/gms/tagmanager/zzfu;->zzk(Lcom/google/android/gms/internal/gtm/zzam;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/tagmanager/zzfu;->zzm(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/tagmanager/zzfu;->zzd:Ljava/lang/String;

    if-ne v2, v3, :cond_1

    return-object v0

    .line 6
    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzam;->zzf()J

    move-result-wide v0

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_3
    const-string p0, "GoogleTagManager"

    const-string v1, "Trying to convert a function id to object"

    .line 8
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :pswitch_4
    const-string p0, "GoogleTagManager"

    const-string v1, "Trying to convert a macro reference to object"

    .line 9
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 10
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzam;->zzc()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzam;->zzd()I

    move-result v2

    if-eq v1, v2, :cond_3

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzxv;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Converting an invalid value to object: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "GoogleTagManager"

    .line 12
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_3
    new-instance v1, Ljava/util/HashMap;

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzam;->zzd()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    const/4 v2, 0x0

    .line 14
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzam;->zzc()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 15
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/gtm/zzam;->zzl(I)Lcom/google/android/gms/internal/gtm/zzam;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/tagmanager/zzfu;->zzk(Lcom/google/android/gms/internal/gtm/zzam;)Ljava/lang/Object;

    move-result-object v3

    .line 16
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/gtm/zzam;->zzm(I)Lcom/google/android/gms/internal/gtm/zzam;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/tagmanager/zzfu;->zzk(Lcom/google/android/gms/internal/gtm/zzam;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v3, :cond_5

    if-nez v4, :cond_4

    goto :goto_2

    .line 17
    :cond_4
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    return-object v0

    :cond_6
    return-object v1

    :pswitch_6
    new-instance v1, Ljava/util/ArrayList;

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzam;->zza()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzam;->zzs()Ljava/util/List;

    move-result-object p0

    .line 19
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/gtm/zzam;

    .line 20
    invoke-static {v2}, Lcom/google/android/gms/tagmanager/zzfu;->zzk(Lcom/google/android/gms/internal/gtm/zzam;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_7

    return-object v0

    .line 21
    :cond_7
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    return-object v1

    .line 23
    :pswitch_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzam;->zzq()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static zzl()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/tagmanager/zzfu;->zzd:Ljava/lang/String;

    return-object v0
.end method

.method public static zzm(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lcom/google/android/gms/tagmanager/zzfu;->zzd:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static zzn(Ljava/lang/Object;)D
    .locals 2

    .line 1
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-string p0, "GoogleTagManager"

    const-string v0, "getDouble received non-Number"

    .line 3
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private static zzo(Ljava/lang/Object;)J
    .locals 2

    .line 1
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-string p0, "GoogleTagManager"

    const-string v0, "getInt64 received non-Number"

    .line 3
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private static zzp(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/zzft;
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzft;->zze(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/zzft;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to convert \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' to a number."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "GoogleTagManager"

    .line 3
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/google/android/gms/tagmanager/zzfu;->zzc:Lcom/google/android/gms/tagmanager/zzft;

    return-object p0
.end method

.method private static zzq(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p0, Ljava/lang/Double;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    instance-of v0, p0, Ljava/lang/Float;

    if-nez v0, :cond_2

    instance-of v0, p0, Lcom/google/android/gms/tagmanager/zzft;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/google/android/gms/tagmanager/zzft;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/zzft;->zzf()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_0
    return v2
.end method

.method private static zzr(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p0, Ljava/lang/Byte;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    instance-of v0, p0, Ljava/lang/Short;

    if-nez v0, :cond_2

    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_2

    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_2

    instance-of v0, p0, Lcom/google/android/gms/tagmanager/zzft;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/google/android/gms/tagmanager/zzft;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/zzft;->zzg()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_0
    return v2
.end method
