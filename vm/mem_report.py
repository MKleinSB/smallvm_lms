Import("env")

def after_build(source, target, env):
    print("\nMemory Map saved to: .pio/build/{}/memory.map".format(env["PIOENV"]))
    print("To analyze memory usage, run:")
    print("   pio run --target size")
    print("Or use a tool like 'arm-none-eabi-nm' or 'mapfile-parser' on memory.map")

env.AddPostAction("buildprog", after_build)
