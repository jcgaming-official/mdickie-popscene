.class public final Lcom/google/android/gms/internal/gtm/zzsd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager-v4-impl@@18.0.4"


# direct methods
.method public static zza(Lcom/google/android/gms/internal/gtm/zzam;)Lcom/google/android/gms/internal/gtm/zzam;
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzam;->zzg()Lcom/google/android/gms/internal/gtm/zzan;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/gtm/zzat;->zza:Lcom/google/android/gms/internal/gtm/zzat;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gtm/zzan;->zzt(Lcom/google/android/gms/internal/gtm/zzat;)Lcom/google/android/gms/internal/gtm/zzan;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzam;->zzh()Lcom/google/android/gms/internal/gtm/zzat;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gtm/zzan;->zzt(Lcom/google/android/gms/internal/gtm/zzat;)Lcom/google/android/gms/internal/gtm/zzan;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzan;->zzi()Lcom/google/android/gms/internal/gtm/zzan;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzam;->zzr()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gtm/zzan;->zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/gtm/zzan;

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzam;->zzP()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/gtm/zzan;->zzo(Z)Lcom/google/android/gms/internal/gtm/zzan;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzxp;->zzB()Lcom/google/android/gms/internal/gtm/zzxv;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/gtm/zzam;

    return-object p0
.end method

.method public static zzb(Lcom/google/android/gms/internal/gtm/zzac;)Lcom/google/android/gms/internal/gtm/zzrv;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/gtm/zzsc;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzac;->zzf()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/gms/internal/gtm/zzam;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzac;->zzf()I

    move-result v3

    if-ge v2, v3, :cond_0

    new-instance v3, Ljava/util/HashSet;

    .line 3
    invoke-direct {v3, v1}, Ljava/util/HashSet;-><init>(I)V

    invoke-static {v2, p0, v0, v3}, Lcom/google/android/gms/internal/gtm/zzsd;->zze(ILcom/google/android/gms/internal/gtm/zzac;[Lcom/google/android/gms/internal/gtm/zzam;Ljava/util/Set;)Lcom/google/android/gms/internal/gtm/zzam;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/google/android/gms/internal/gtm/zzrx;

    const/4 v3, 0x0

    .line 4
    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/gtm/zzrx;-><init>(Lcom/google/android/gms/internal/gtm/zzrw;)V

    new-instance v4, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    .line 6
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzac;->zze()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 7
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/gtm/zzac;->zzi(I)Lcom/google/android/gms/internal/gtm/zzu;

    move-result-object v6

    invoke-static {v6, p0, v0}, Lcom/google/android/gms/internal/gtm/zzsd;->zzf(Lcom/google/android/gms/internal/gtm/zzu;Lcom/google/android/gms/internal/gtm/zzac;[Lcom/google/android/gms/internal/gtm/zzam;)Lcom/google/android/gms/internal/gtm/zzrr;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    .line 8
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    .line 9
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzac;->zzc()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 10
    invoke-virtual {p0, v6}, Lcom/google/android/gms/internal/gtm/zzac;->zzh(I)Lcom/google/android/gms/internal/gtm/zzu;

    move-result-object v7

    invoke-static {v7, p0, v0}, Lcom/google/android/gms/internal/gtm/zzsd;->zzf(Lcom/google/android/gms/internal/gtm/zzu;Lcom/google/android/gms/internal/gtm/zzac;[Lcom/google/android/gms/internal/gtm/zzam;)Lcom/google/android/gms/internal/gtm/zzrr;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    .line 11
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 12
    :goto_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzac;->zza()I

    move-result v7

    if-ge v1, v7, :cond_3

    .line 13
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/gtm/zzac;->zzg(I)Lcom/google/android/gms/internal/gtm/zzu;

    move-result-object v7

    invoke-static {v7, p0, v0}, Lcom/google/android/gms/internal/gtm/zzsd;->zzf(Lcom/google/android/gms/internal/gtm/zzu;Lcom/google/android/gms/internal/gtm/zzac;[Lcom/google/android/gms/internal/gtm/zzam;)Lcom/google/android/gms/internal/gtm/zzrr;

    move-result-object v7

    .line 14
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/gtm/zzrx;->zzb(Lcom/google/android/gms/internal/gtm/zzrr;)Lcom/google/android/gms/internal/gtm/zzrx;

    .line 15
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 16
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzac;->zzq()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/gtm/zzae;

    new-instance v7, Lcom/google/android/gms/internal/gtm/zzsb;

    .line 17
    invoke-direct {v7, v3}, Lcom/google/android/gms/internal/gtm/zzsb;-><init>(Lcom/google/android/gms/internal/gtm/zzsa;)V

    .line 18
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzae;->zzh()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 19
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/gtm/zzrr;

    invoke-virtual {v7, v9}, Lcom/google/android/gms/internal/gtm/zzsb;->zzg(Lcom/google/android/gms/internal/gtm/zzrr;)Lcom/google/android/gms/internal/gtm/zzsb;

    goto :goto_5

    .line 20
    :cond_4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzae;->zzg()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 21
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/gtm/zzrr;

    invoke-virtual {v7, v9}, Lcom/google/android/gms/internal/gtm/zzsb;->zzf(Lcom/google/android/gms/internal/gtm/zzrr;)Lcom/google/android/gms/internal/gtm/zzsb;

    goto :goto_6

    .line 22
    :cond_5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzae;->zze()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 23
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/gtm/zzrr;

    invoke-virtual {v7, v9}, Lcom/google/android/gms/internal/gtm/zzsb;->zzd(Lcom/google/android/gms/internal/gtm/zzrr;)Lcom/google/android/gms/internal/gtm/zzsb;

    goto :goto_7

    .line 24
    :cond_6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzae;->zzf()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 25
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/google/android/gms/internal/gtm/zzac;->zzm(I)Lcom/google/android/gms/internal/gtm/zzam;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/internal/gtm/zzam;->zzq()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/google/android/gms/internal/gtm/zzsb;->zze(Ljava/lang/String;)Lcom/google/android/gms/internal/gtm/zzsb;

    goto :goto_8

    .line 26
    :cond_7
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzae;->zzk()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 27
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/gtm/zzrr;

    invoke-virtual {v7, v9}, Lcom/google/android/gms/internal/gtm/zzsb;->zzj(Lcom/google/android/gms/internal/gtm/zzrr;)Lcom/google/android/gms/internal/gtm/zzsb;

    goto :goto_9

    .line 28
    :cond_8
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzae;->zzl()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 29
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/google/android/gms/internal/gtm/zzac;->zzm(I)Lcom/google/android/gms/internal/gtm/zzam;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/internal/gtm/zzam;->zzq()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/google/android/gms/internal/gtm/zzsb;->zzk(Ljava/lang/String;)Lcom/google/android/gms/internal/gtm/zzsb;

    goto :goto_a

    .line 30
    :cond_9
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzae;->zzc()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 31
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/gtm/zzrr;

    invoke-virtual {v7, v9}, Lcom/google/android/gms/internal/gtm/zzsb;->zzb(Lcom/google/android/gms/internal/gtm/zzrr;)Lcom/google/android/gms/internal/gtm/zzsb;

    goto :goto_b

    .line 32
    :cond_a
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzae;->zzd()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 33
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/google/android/gms/internal/gtm/zzac;->zzm(I)Lcom/google/android/gms/internal/gtm/zzam;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/internal/gtm/zzam;->zzq()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/google/android/gms/internal/gtm/zzsb;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/gtm/zzsb;

    goto :goto_c

    .line 34
    :cond_b
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzae;->zzi()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 35
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/gtm/zzrr;

    invoke-virtual {v7, v9}, Lcom/google/android/gms/internal/gtm/zzsb;->zzh(Lcom/google/android/gms/internal/gtm/zzrr;)Lcom/google/android/gms/internal/gtm/zzsb;

    goto :goto_d

    .line 36
    :cond_c
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzae;->zzj()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 37
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/google/android/gms/internal/gtm/zzac;->zzm(I)Lcom/google/android/gms/internal/gtm/zzam;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/gtm/zzam;->zzq()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/gtm/zzsb;->zzi(Ljava/lang/String;)Lcom/google/android/gms/internal/gtm/zzsb;

    goto :goto_e

    .line 38
    :cond_d
    invoke-virtual {v7}, Lcom/google/android/gms/internal/gtm/zzsb;->zza()Lcom/google/android/gms/internal/gtm/zzrz;

    move-result-object v1

    .line 39
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/gtm/zzrx;->zzc(Lcom/google/android/gms/internal/gtm/zzrz;)Lcom/google/android/gms/internal/gtm/zzrx;

    goto/16 :goto_4

    .line 40
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzac;->zzn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/gtm/zzrx;->zze(Ljava/lang/String;)Lcom/google/android/gms/internal/gtm/zzrx;

    .line 41
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzac;->zzd()I

    move-result p0

    invoke-virtual {v2, p0}, Lcom/google/android/gms/internal/gtm/zzrx;->zzd(I)Lcom/google/android/gms/internal/gtm/zzrx;

    .line 42
    invoke-virtual {v2}, Lcom/google/android/gms/internal/gtm/zzrx;->zza()Lcom/google/android/gms/internal/gtm/zzrv;

    move-result-object p0

    return-object p0
.end method

.method public static zzc(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x400

    .line 1
    new-array v0, v0, [B

    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    .line 2
    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method

.method private static zzd(Lcom/google/android/gms/internal/gtm/zzam;)Lcom/google/android/gms/internal/gtm/zzag;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/gtm/zzsc;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzag;->zza:Lcom/google/android/gms/internal/gtm/zzxt;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gtm/zzxr;->zzV(Lcom/google/android/gms/internal/gtm/zzxd;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Expected a ServingValue and didn\'t get one. Value is: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzsd;->zzh(Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzag;->zza:Lcom/google/android/gms/internal/gtm/zzxt;

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gtm/zzxr;->zzU(Lcom/google/android/gms/internal/gtm/zzxd;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/gtm/zzag;

    return-object p0
.end method

.method private static zze(ILcom/google/android/gms/internal/gtm/zzac;[Lcom/google/android/gms/internal/gtm/zzam;Ljava/util/Set;)Lcom/google/android/gms/internal/gtm/zzam;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/gtm/zzsc;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Value cycle detected.  Current value reference: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ".  Previous value references: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/gtm/zzsd;->zzh(Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzac;->zzr()Ljava/util/List;

    move-result-object v1

    const-string v2, "values"

    invoke-static {v1, p0, v2}, Lcom/google/android/gms/internal/gtm/zzsd;->zzg(Ljava/util/List;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/gtm/zzam;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzxv;->zzZ()Lcom/google/android/gms/internal/gtm/zzxp;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/gtm/zzan;

    .line 4
    aget-object v2, p2, p0

    if-eqz v2, :cond_1

    return-object v2

    .line 5
    :cond_1
    invoke-interface {p3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzat;->zza:Lcom/google/android/gms/internal/gtm/zzat;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzan;->zzu()Lcom/google/android/gms/internal/gtm/zzat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzat;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 p1, 0x0

    move-object v0, p1

    goto/16 :goto_4

    .line 7
    :pswitch_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzxp;->zzB()Lcom/google/android/gms/internal/gtm/zzxv;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzam;

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzsd;->zza(Lcom/google/android/gms/internal/gtm/zzam;)Lcom/google/android/gms/internal/gtm/zzam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzxv;->zzZ()Lcom/google/android/gms/internal/gtm/zzxp;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzan;

    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzxp;->zzB()Lcom/google/android/gms/internal/gtm/zzxv;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/gtm/zzam;

    invoke-static {v2}, Lcom/google/android/gms/internal/gtm/zzsd;->zzd(Lcom/google/android/gms/internal/gtm/zzam;)Lcom/google/android/gms/internal/gtm/zzag;

    move-result-object v2

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzan;->zzm()Lcom/google/android/gms/internal/gtm/zzan;

    .line 10
    invoke-virtual {v2}, Lcom/google/android/gms/internal/gtm/zzag;->zzi()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 11
    invoke-static {v3, p1, p2, p3}, Lcom/google/android/gms/internal/gtm/zzsd;->zze(ILcom/google/android/gms/internal/gtm/zzac;[Lcom/google/android/gms/internal/gtm/zzam;Ljava/util/Set;)Lcom/google/android/gms/internal/gtm/zzam;

    move-result-object v3

    .line 12
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/gtm/zzan;->zzh(Lcom/google/android/gms/internal/gtm/zzam;)Lcom/google/android/gms/internal/gtm/zzan;

    goto :goto_0

    .line 13
    :pswitch_1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzxp;->zzB()Lcom/google/android/gms/internal/gtm/zzxv;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzam;

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzsd;->zza(Lcom/google/android/gms/internal/gtm/zzam;)Lcom/google/android/gms/internal/gtm/zzam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzxv;->zzZ()Lcom/google/android/gms/internal/gtm/zzxp;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzan;

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzxp;->zzB()Lcom/google/android/gms/internal/gtm/zzxv;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/gtm/zzam;

    invoke-static {v2}, Lcom/google/android/gms/internal/gtm/zzsd;->zzd(Lcom/google/android/gms/internal/gtm/zzam;)Lcom/google/android/gms/internal/gtm/zzag;

    move-result-object v2

    .line 15
    invoke-virtual {v2}, Lcom/google/android/gms/internal/gtm/zzag;->zza()I

    move-result v2

    .line 16
    invoke-static {v2, p1, p2, p3}, Lcom/google/android/gms/internal/gtm/zzsd;->zze(ILcom/google/android/gms/internal/gtm/zzac;[Lcom/google/android/gms/internal/gtm/zzam;Ljava/util/Set;)Lcom/google/android/gms/internal/gtm/zzam;

    move-result-object p1

    .line 17
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzfu;->zzk(Lcom/google/android/gms/internal/gtm/zzam;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzfu;->zzm(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 18
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gtm/zzan;->zzr(Ljava/lang/String;)Lcom/google/android/gms/internal/gtm/zzan;

    goto/16 :goto_4

    .line 19
    :pswitch_2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzxp;->zzB()Lcom/google/android/gms/internal/gtm/zzxv;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzam;

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzsd;->zza(Lcom/google/android/gms/internal/gtm/zzam;)Lcom/google/android/gms/internal/gtm/zzam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzxv;->zzZ()Lcom/google/android/gms/internal/gtm/zzxp;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzan;

    .line 20
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzxp;->zzB()Lcom/google/android/gms/internal/gtm/zzxv;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/gtm/zzam;

    invoke-static {v2}, Lcom/google/android/gms/internal/gtm/zzsd;->zzd(Lcom/google/android/gms/internal/gtm/zzam;)Lcom/google/android/gms/internal/gtm/zzag;

    move-result-object v2

    .line 21
    invoke-virtual {v2}, Lcom/google/android/gms/internal/gtm/zzag;->zzc()I

    move-result v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/gtm/zzag;->zzd()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 22
    invoke-virtual {v2}, Lcom/google/android/gms/internal/gtm/zzag;->zzc()I

    move-result v3

    .line 23
    invoke-virtual {v2}, Lcom/google/android/gms/internal/gtm/zzag;->zzd()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Uneven map keys ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") and map values ("

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 24
    invoke-static {v3}, Lcom/google/android/gms/internal/gtm/zzsd;->zzh(Ljava/lang/String;)V

    .line 25
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzan;->zzk()Lcom/google/android/gms/internal/gtm/zzan;

    .line 26
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzan;->zzl()Lcom/google/android/gms/internal/gtm/zzan;

    .line 27
    invoke-virtual {v2}, Lcom/google/android/gms/internal/gtm/zzag;->zzg()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 28
    invoke-static {v4, p1, p2, p3}, Lcom/google/android/gms/internal/gtm/zzsd;->zze(ILcom/google/android/gms/internal/gtm/zzac;[Lcom/google/android/gms/internal/gtm/zzam;Ljava/util/Set;)Lcom/google/android/gms/internal/gtm/zzam;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/gtm/zzan;->zzf(Lcom/google/android/gms/internal/gtm/zzam;)Lcom/google/android/gms/internal/gtm/zzan;

    goto :goto_1

    .line 29
    :cond_3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/gtm/zzag;->zzh()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 30
    invoke-static {v3, p1, p2, p3}, Lcom/google/android/gms/internal/gtm/zzsd;->zze(ILcom/google/android/gms/internal/gtm/zzac;[Lcom/google/android/gms/internal/gtm/zzam;Ljava/util/Set;)Lcom/google/android/gms/internal/gtm/zzam;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/gtm/zzan;->zzg(Lcom/google/android/gms/internal/gtm/zzam;)Lcom/google/android/gms/internal/gtm/zzan;

    goto :goto_2

    .line 31
    :pswitch_3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzxp;->zzB()Lcom/google/android/gms/internal/gtm/zzxv;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzam;

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzsd;->zzd(Lcom/google/android/gms/internal/gtm/zzam;)Lcom/google/android/gms/internal/gtm/zzag;

    move-result-object v0

    .line 32
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzxp;->zzB()Lcom/google/android/gms/internal/gtm/zzxv;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/gtm/zzam;

    invoke-static {v2}, Lcom/google/android/gms/internal/gtm/zzsd;->zza(Lcom/google/android/gms/internal/gtm/zzam;)Lcom/google/android/gms/internal/gtm/zzam;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/gtm/zzxv;->zzZ()Lcom/google/android/gms/internal/gtm/zzxp;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/gtm/zzan;

    .line 33
    invoke-virtual {v2}, Lcom/google/android/gms/internal/gtm/zzan;->zzj()Lcom/google/android/gms/internal/gtm/zzan;

    .line 34
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzag;->zzf()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 35
    :try_start_0
    invoke-static {v3, p1, p2, p3}, Lcom/google/android/gms/internal/gtm/zzsd;->zze(ILcom/google/android/gms/internal/gtm/zzac;[Lcom/google/android/gms/internal/gtm/zzam;Ljava/util/Set;)Lcom/google/android/gms/internal/gtm/zzam;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/gtm/zzan;->zze(Lcom/google/android/gms/internal/gtm/zzam;)Lcom/google/android/gms/internal/gtm/zzan;

    goto :goto_3

    :cond_4
    move-object v0, v2

    goto :goto_4

    :pswitch_4
    move-object v0, v1

    :cond_5
    :goto_4
    if-nez v0, :cond_6

    .line 36
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Invalid value: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzsd;->zzh(Ljava/lang/String;)V

    .line 37
    :cond_6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzxp;->zzB()Lcom/google/android/gms/internal/gtm/zzxv;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzam;

    aput-object p1, p2, p0

    .line 38
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p3, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 39
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzxp;->zzB()Lcom/google/android/gms/internal/gtm/zzxv;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/gtm/zzam;

    return-object p0

    :catch_0
    move-exception p0

    .line 35
    throw p0

    :goto_5
    nop

    goto :goto_5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private static zzf(Lcom/google/android/gms/internal/gtm/zzu;Lcom/google/android/gms/internal/gtm/zzac;[Lcom/google/android/gms/internal/gtm/zzam;)Lcom/google/android/gms/internal/gtm/zzrr;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/gtm/zzsc;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzrt;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/gtm/zzrt;-><init>(Lcom/google/android/gms/internal/gtm/zzrs;)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzu;->zzc()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzac;->zzp()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v3, "properties"

    invoke-static {v2, v1, v3}, Lcom/google/android/gms/internal/gtm/zzsd;->zzg(Ljava/util/List;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/gtm/zzaa;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzac;->zzo()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzaa;->zza()I

    move-result v3

    const-string v4, "keys"

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/gtm/zzsd;->zzg(Ljava/util/List;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzaa;->zzc()I

    move-result v1

    if-ltz v1, :cond_0

    array-length v3, p2

    if-lt v1, v3, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 6
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Index out of bounds detected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " in values"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/gtm/zzsd;->zzh(Ljava/lang/String;)V

    .line 7
    :cond_1
    aget-object v1, p2, v1

    .line 8
    sget-object v3, Lcom/google/android/gms/internal/gtm/zzb;->zzcL:Lcom/google/android/gms/internal/gtm/zzb;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/gtm/zzb;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 9
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gtm/zzrt;->zzc(Lcom/google/android/gms/internal/gtm/zzam;)Lcom/google/android/gms/internal/gtm/zzrt;

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/gtm/zzrt;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/gtm/zzam;)Lcom/google/android/gms/internal/gtm/zzrt;

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzrt;->zza()Lcom/google/android/gms/internal/gtm/zzrr;

    move-result-object p0

    return-object p0
.end method

.method private static zzg(Ljava/util/List;ILjava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/gtm/zzsc;
        }
    .end annotation

    if-ltz p1, :cond_0

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Index out of bounds detected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/gtm/zzsd;->zzh(Ljava/lang/String;)V

    .line 3
    :cond_1
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static zzh(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/gtm/zzsc;
        }
    .end annotation

    const-string v0, "GoogleTagManager"

    .line 1
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzsc;

    .line 2
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/gtm/zzsc;-><init>(Ljava/lang/String;)V

    throw v0
.end method
