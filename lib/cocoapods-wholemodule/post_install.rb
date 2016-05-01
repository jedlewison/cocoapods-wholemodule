require 'cocoapods-core'

module CocoaPodsWholeModule
	
	Pod::HooksManager.register('cocoapods-wholemodule', :post_install) do |installer, options|
		whole_module_configs = ['Release']
		if options[:wholemodule].is_a?(Array)
			whole_module_configs = options[:wholemodule]
		elsif options[:wholemodule].is_a?(String)
			whole_module_configs = [options[:wholemodule]]
		end

		installer.pods_project.targets.each do |target|
			target.build_configurations.each do |config|
				puts(whole_module_configs, config.name, whole_module_configs.include?(config.name))
				if whole_module_configs.include?(config.name)
					config.build_settings['SWIFT_OPTIMIZATION_LEVEL'] = '-Owholemodule'
				else
					config.build_settings['SWIFT_OPTIMIZATION_LEVEL'] = '-Onone'
				end
			end
		end
		installer.pods_project.save

	end

end