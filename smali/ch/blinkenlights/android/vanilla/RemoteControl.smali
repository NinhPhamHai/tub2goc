.class public Lch/blinkenlights/android/vanilla/RemoteControl;
.super Ljava/lang/Object;
.source "RemoteControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/blinkenlights/android/vanilla/RemoteControl$Client;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getClient(Landroid/content/Context;)Lch/blinkenlights/android/vanilla/RemoteControl$Client;
    .locals 2

    .line 30
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v0, Lch/blinkenlights/android/vanilla/RemoteControlImplLp;

    invoke-direct {v0, p1}, Lch/blinkenlights/android/vanilla/RemoteControlImplLp;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lch/blinkenlights/android/vanilla/RemoteControlImplICS;

    invoke-direct {v0, p1}, Lch/blinkenlights/android/vanilla/RemoteControlImplICS;-><init>(Landroid/content/Context;)V

    :goto_0
    return-object v0
.end method
