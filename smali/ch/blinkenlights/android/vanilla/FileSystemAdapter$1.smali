.class Lch/blinkenlights/android/vanilla/FileSystemAdapter$1;
.super Ljava/lang/Object;
.source "FileSystemAdapter.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/blinkenlights/android/vanilla/FileSystemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lch/blinkenlights/android/vanilla/FileSystemAdapter;


# direct methods
.method constructor <init>(Lch/blinkenlights/android/vanilla/FileSystemAdapter;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/FileSystemAdapter$1;->this$0:Lch/blinkenlights/android/vanilla/FileSystemAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 4

    const/4 p1, 0x0

    .line 110
    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_0

    return p1

    .line 112
    :cond_0
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/FileSystemAdapter$1;->this$0:Lch/blinkenlights/android/vanilla/FileSystemAdapter;

    iget-object v0, v0, Lch/blinkenlights/android/vanilla/FileSystemAdapter;->mFilter:[Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 113
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .line 114
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/FileSystemAdapter$1;->this$0:Lch/blinkenlights/android/vanilla/FileSystemAdapter;

    iget-object v0, v0, Lch/blinkenlights/android/vanilla/FileSystemAdapter;->mFilter:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 115
    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    return p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method
