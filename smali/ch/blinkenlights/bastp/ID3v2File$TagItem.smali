.class Lch/blinkenlights/bastp/ID3v2File$TagItem;
.super Ljava/lang/Object;
.source "ID3v2File.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/blinkenlights/bastp/ID3v2File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TagItem"
.end annotation


# instance fields
.field key:Ljava/lang/String;

.field final synthetic this$0:Lch/blinkenlights/bastp/ID3v2File;

.field value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lch/blinkenlights/bastp/ID3v2File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lch/blinkenlights/bastp/ID3v2File$TagItem;->this$0:Lch/blinkenlights/bastp/ID3v2File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p2, p0, Lch/blinkenlights/bastp/ID3v2File$TagItem;->key:Ljava/lang/String;

    .line 64
    iput-object p3, p0, Lch/blinkenlights/bastp/ID3v2File$TagItem;->value:Ljava/lang/String;

    return-void
.end method
