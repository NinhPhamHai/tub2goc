.class Lch/blinkenlights/android/vanilla/BastpUtil$RGLruCache;
.super Landroid/util/LruCache;
.source "BastpUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/blinkenlights/android/vanilla/BastpUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RGLruCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache<",
        "Ljava/lang/String;",
        "Lch/blinkenlights/android/vanilla/BastpUtil$GainValues;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lch/blinkenlights/android/vanilla/BastpUtil;


# direct methods
.method public constructor <init>(Lch/blinkenlights/android/vanilla/BastpUtil;I)V
    .locals 0

    .line 42
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/BastpUtil$RGLruCache;->this$0:Lch/blinkenlights/android/vanilla/BastpUtil;

    .line 43
    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method
