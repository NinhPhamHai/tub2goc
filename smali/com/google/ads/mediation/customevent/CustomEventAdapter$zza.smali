.class final Lcom/google/ads/mediation/customevent/CustomEventAdapter$zza;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@18.3.0"

# interfaces
.implements Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/mediation/customevent/CustomEventAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "zza"
.end annotation


# instance fields
.field private final zzmm:Lcom/google/ads/mediation/customevent/CustomEventAdapter;

.field private final zzmn:Lcom/google/ads/mediation/MediationInterstitialListener;

.field private final synthetic zzmo:Lcom/google/ads/mediation/customevent/CustomEventAdapter;


# direct methods
.method public constructor <init>(Lcom/google/ads/mediation/customevent/CustomEventAdapter;Lcom/google/ads/mediation/customevent/CustomEventAdapter;Lcom/google/ads/mediation/MediationInterstitialListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/ads/mediation/customevent/CustomEventAdapter$zza;->zzmo:Lcom/google/ads/mediation/customevent/CustomEventAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/ads/mediation/customevent/CustomEventAdapter$zza;->zzmm:Lcom/google/ads/mediation/customevent/CustomEventAdapter;

    .line 3
    iput-object p3, p0, Lcom/google/ads/mediation/customevent/CustomEventAdapter$zza;->zzmn:Lcom/google/ads/mediation/MediationInterstitialListener;

    return-void
.end method
