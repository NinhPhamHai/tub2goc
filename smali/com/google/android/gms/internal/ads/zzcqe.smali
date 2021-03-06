.class public final Lcom/google/android/gms/internal/ads/zzcqe;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.3.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcty;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzcty<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzabg:Ljava/lang/String;

.field private final zzblm:Lcom/google/android/gms/internal/ads/zzuj;

.field private final zzboh:F

.field private final zzccq:Z

.field private final zzdgf:I

.field private final zzdgg:I

.field private final zzgep:Ljava/lang/String;

.field private final zzgeq:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzuj;Ljava/lang/String;ZLjava/lang/String;FIILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "the adSize must not be null"

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqe;->zzblm:Lcom/google/android/gms/internal/ads/zzuj;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcqe;->zzabg:Ljava/lang/String;

    .line 5
    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzcqe;->zzccq:Z

    .line 6
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcqe;->zzgep:Ljava/lang/String;

    .line 7
    iput p5, p0, Lcom/google/android/gms/internal/ads/zzcqe;->zzboh:F

    .line 8
    iput p6, p0, Lcom/google/android/gms/internal/ads/zzcqe;->zzdgf:I

    .line 9
    iput p7, p0, Lcom/google/android/gms/internal/ads/zzcqe;->zzdgg:I

    .line 10
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzcqe;->zzgeq:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final synthetic zzr(Ljava/lang/Object;)V
    .locals 10

    .line 12
    check-cast p1, Landroid/os/Bundle;

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqe;->zzblm:Lcom/google/android/gms/internal/ads/zzuj;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzuj;->width:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "smart_w"

    const-string v4, "full"

    invoke-static {p1, v3, v4, v0}, Lcom/google/android/gms/internal/ads/zzdaa;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqe;->zzblm:Lcom/google/android/gms/internal/ads/zzuj;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzuj;->height:I

    const/4 v3, -0x2

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v3, "smart_h"

    const-string v4, "auto"

    invoke-static {p1, v3, v4, v0}, Lcom/google/android/gms/internal/ads/zzdaa;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 15
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcqe;->zzblm:Lcom/google/android/gms/internal/ads/zzuj;

    iget-boolean v3, v3, Lcom/google/android/gms/internal/ads/zzuj;->zzccr:Z

    const-string v4, "ene"

    invoke-static {p1, v4, v0, v3}, Lcom/google/android/gms/internal/ads/zzdaa;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Boolean;Z)V

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqe;->zzblm:Lcom/google/android/gms/internal/ads/zzuj;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzuj;->zzccu:Z

    const-string v3, "rafmt"

    const-string v4, "102"

    invoke-static {p1, v3, v4, v0}, Lcom/google/android/gms/internal/ads/zzdaa;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqe;->zzblm:Lcom/google/android/gms/internal/ads/zzuj;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzuj;->zzccv:Z

    const-string v4, "103"

    invoke-static {p1, v3, v4, v0}, Lcom/google/android/gms/internal/ads/zzdaa;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqe;->zzabg:Ljava/lang/String;

    const-string v3, "format"

    invoke-static {p1, v3, v0}, Lcom/google/android/gms/internal/ads/zzdaa;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcqe;->zzccq:Z

    const-string v3, "height"

    const-string v4, "fluid"

    invoke-static {p1, v4, v3, v0}, Lcom/google/android/gms/internal/ads/zzdaa;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqe;->zzgep:Ljava/lang/String;

    .line 21
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/2addr v4, v2

    const-string v5, "sz"

    .line 22
    invoke-static {p1, v5, v0, v4}, Lcom/google/android/gms/internal/ads/zzdaa;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 23
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcqe;->zzboh:F

    const-string v4, "u_sd"

    invoke-virtual {p1, v4, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 24
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcqe;->zzdgf:I

    const-string v4, "sw"

    invoke-virtual {p1, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 25
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcqe;->zzdgg:I

    const-string v4, "sh"

    invoke-virtual {p1, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqe;->zzgeq:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/2addr v2, v4

    const-string v4, "sc"

    invoke-static {p1, v4, v0, v2}, Lcom/google/android/gms/internal/ads/zzdaa;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 29
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcqe;->zzblm:Lcom/google/android/gms/internal/ads/zzuj;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzuj;->zzccp:[Lcom/google/android/gms/internal/ads/zzuj;

    const-string v4, "is_fluid_height"

    const-string v5, "width"

    if-nez v2, :cond_2

    .line 30
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 31
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcqe;->zzblm:Lcom/google/android/gms/internal/ads/zzuj;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzuj;->height:I

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 32
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcqe;->zzblm:Lcom/google/android/gms/internal/ads/zzuj;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzuj;->width:I

    invoke-virtual {v1, v5, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 33
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcqe;->zzblm:Lcom/google/android/gms/internal/ads/zzuj;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzuj;->zzccq:Z

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 34
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 36
    :cond_2
    array-length v6, v2

    :goto_2
    if-ge v1, v6, :cond_3

    aget-object v7, v2, v1

    .line 37
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 38
    iget-boolean v9, v7, Lcom/google/android/gms/internal/ads/zzuj;->zzccq:Z

    invoke-virtual {v8, v4, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 39
    iget v9, v7, Lcom/google/android/gms/internal/ads/zzuj;->height:I

    invoke-virtual {v8, v3, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 40
    iget v7, v7, Lcom/google/android/gms/internal/ads/zzuj;->width:I

    invoke-virtual {v8, v5, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 41
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    const-string v1, "valid_ad_sizes"

    .line 43
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method
