.class public final Lcom/google/android/gms/internal/ads/zzblj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.3.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdxg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdxg<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final zzfer:Lcom/google/android/gms/internal/ads/zzblj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/zzblj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzblj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzblj;->zzfer:Lcom/google/android/gms/internal/ads/zzblj;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzagk()Lcom/google/android/gms/internal/ads/zzblj;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzblj;->zzfer:Lcom/google/android/gms/internal/ads/zzblj;

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    const-string v0, "banner"

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdxm;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
