.class synthetic Lch/blinkenlights/android/vanilla/FullPlaybackActivity$3;
.super Ljava/lang/Object;
.source "FullPlaybackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/blinkenlights/android/vanilla/FullPlaybackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$ch$blinkenlights$android$vanilla$Action:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 609
    invoke-static {}, Lch/blinkenlights/android/vanilla/Action;->values()[Lch/blinkenlights/android/vanilla/Action;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lch/blinkenlights/android/vanilla/FullPlaybackActivity$3;->$SwitchMap$ch$blinkenlights$android$vanilla$Action:[I

    :try_start_0
    sget-object v0, Lch/blinkenlights/android/vanilla/FullPlaybackActivity$3;->$SwitchMap$ch$blinkenlights$android$vanilla$Action:[I

    sget-object v1, Lch/blinkenlights/android/vanilla/Action;->ToggleControls:Lch/blinkenlights/android/vanilla/Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lch/blinkenlights/android/vanilla/FullPlaybackActivity$3;->$SwitchMap$ch$blinkenlights$android$vanilla$Action:[I

    sget-object v1, Lch/blinkenlights/android/vanilla/Action;->ShowQueue:Lch/blinkenlights/android/vanilla/Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
