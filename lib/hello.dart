
import 'hello_platform_interface.dart';

class Hello {

  Future<String?> getDeviceName(){
    return HelloPlatform.instance.getDeviceName();
  }

  Future<String?> getPlatformVersion() {
    return HelloPlatform.instance.getPlatformVersion();
  }
}
