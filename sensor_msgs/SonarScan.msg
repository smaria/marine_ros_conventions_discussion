# Scans from sonar devices 
# from single beam to scans with rotation around one axis

Header header            # in frame frame_id, angles are measured around
                         # the positive Z axis (counterclockwise, if Z is up)
                         # with zero angle being forward along the x axis

time sensor_time         # acquisition time of
                         # the first measurement of the scan

float32 angle_min        # start angle of the image [rad]
float32 angle_max        # end angle of the image [rad], empty for single beam
float32 angle_increment  # angular distance between beam centers [rad], empty for single beam

float32 beam_width_z     # opening angle, rotation around z axis [rad]
float32 beam_width_y     # opening angle, rotation around y axis [rad]
                         # (orthogonal to plane of rotation)
float32 sound_frequency  # [Hz]

float32 range_min        # minimum range value [m]
float32 range_max        # maximum range value [m]
float32 range_increment  # range resolution [m]

# arrays with sonar measurements 
# first entry corresponds to measurement in angle_min direction,
# consecutive entries from directions with angle_increment added to the previous direction
# there are (angle_max - angle_min) / angle_increment + 1 measurements in each field
# if only ranges or arrays with intensities are available, leave the other empty

float32[] ranges         # range data [m]

SonarBeam[] intensities  # intensity data [device-specific units]

